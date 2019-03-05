Given("I access the bbc login page") do
  @bbc_site = BbcSite.new
  @bbc_site.bbc_homepage.visit_homepage
  @bbc_site.bbc_login_page.visit_login_page
end

Given("I input incorrect username details") do
  @bbc_site.bbc_login_page.fill_in_email_username_field('apple1987@banana.com')
end

Given("I input incorrect password details") do
  @bbc_site.bbc_login_page.fill_in_password_field('password1234')
end

When("I try to login") do
  @bbc_site.bbc_login_page.click_on_signin_button
end

Then("I receive an error for not finding the account") do
  expect(@bbc_site.bbc_login_page.error_message_box).to eq @bbc_site.bbc_login_page.account_missing_error
end

Given("I input password details that are short in character length") do
  @bbc_site.bbc_login_page.fill_in_password_field('pass')
end

Then("I receive an error for the password being short") do
  expect(@bbc_site.bbc_login_page.error_message_box).to eq @bbc_site.bbc_login_page.short_password_error
end

Given("I input username details") do
  @bbc_site.bbc_login_page.fill_in_email_username_field('apple1987@banana.com')
end

Given("I input a invalid password") do
  @bbc_site.bbc_login_page.fill_in_password_field('password')
end

Then("I receive an error message saying passwords invalid") do
  expect(@bbc_site.bbc_login_page.error_message_box).to eq @bbc_site.bbc_login_page.invalid_password_error
end

Given("I input a invalid password with only numbers") do
  @bbc_site.bbc_login_page.fill_in_password_field('12345678')
end

Then("I receive a message saying password is invalid put letters") do
  expect(@bbc_site.bbc_login_page.error_message_box).to eq @bbc_site.bbc_login_page.invalid_password_error_two
end

Given("I input invalid username details") do
  @bbc_site.bbc_login_page.fill_in_email_username_field('apple1987')
end

Then("I receive a message saying username is invalid") do
  expect(@bbc_site.bbc_login_page.error_message_box).to eq @bbc_site.bbc_login_page.invalid_username_error
end