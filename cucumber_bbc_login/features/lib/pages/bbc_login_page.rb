require 'capybara/dsl'

class BbcLoginPage
  include Capybara::DSL

  # Page Objects
  LOGIN_PAGE_ID = 'idcta-link'.freeze
  EMAIL_USERNAME_FIELD_ID = 'user-identifier-input'.freeze
  PASSWORD_FIELD_ID = 'password-input'.freeze
  SIGN_IN_BUTTON_ID = 'submit-butotn'.freeze

  def visit_login_page
    find(:id, LOGIN_PAGE_ID).click
  end

  def fill_in_email_username_field(email)
    fill_in(EMAIL_USERNAME_FIELD_ID, with: email)
  end

  def fill_in_password_field(password)
    fill_in(PASSWORD_FIELD_ID, with: password)
  end
end
