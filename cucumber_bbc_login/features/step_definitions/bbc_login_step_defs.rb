Given("I access the bbc login page") do
  @bbc_site = BbcSite.new
  @bbc_site.bbc_homepage.visit_homepage
  @bbc_site.bbc_login_page.visit_login_page
end

Given("I input incorrect username details") do
  @bbc_site.bbc_login_page.fill_in_email_username_field('apple1987@banana.com')
  sleep 5
end

Given("I input incorrect password details") do
  @bbc_site.bbc_login_page.fill_in_password_field('Password1')
  sleep 5
end

When("I try to login") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I receive an error for not finding the account") do
  pending # Write code here that turns the phrase above into concrete actions
end