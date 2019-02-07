Given("I access the bbc login page") do
  @bbc_site = BbcSite.new
  @bbc_site.bbc_homepage.visit_homepage
  @bbc_site.bbc_login_page.visit_login_page
end

Given("I input incorrect username details") do
  @bbc_site.bbc_login_page.fill_in_email_username_field('apple1987@banana.com')
  sleep 2
end

Given("I input incorrect password details") do
  @bbc_site.bbc_login_page.fill_in_password_field('password1234')
  sleep 2
end

When("I try to login") do
  @bbc_site.bbc_login_page.click_on_signin_button
  sleep 2
end

Then("I receive an error for not finding the account") do
  expect(@bbc_site.bbc_login_page.error_message_box).to eq @bbc_site.bbc_login_page.error
  sleep 2
end

Given("I input password details that are short in character length") do
  @bbc_site.bbc_login_page.fill_in_password_field('pass')
end

Then("I receive an error for the password being short") do
  expect(@bbc_site.bbc_login_page.short_error_message_box).to eq @bbc_site.bbc_login_page.short_password_error
  sleep 2
end
