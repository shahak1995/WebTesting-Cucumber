require 'capybara/dsl'

class BbcLoginPage
  include Capybara::DSL

  attr_accessor :error
  attr_accessor :short_password_error

  # Page Objects
  LOGIN_PAGE_ID = 'idcta-link'.freeze
  EMAIL_USERNAME_FIELD_ID = 'user-identifier-input'.freeze
  PASSWORD_FIELD_ID = 'password-input'.freeze
  SIGN_IN_BUTTON_ID = 'submit-button'.freeze
  ERROR_MESSAGE_CLASS = '.form-message__text'.freeze
  SHORT_ERROR_MESSAGE_CLASS = '.form-message'.freeze

  def initialize
    @error = 'Sorry, we can’t find an account with that email. You can register for a new account or get help here.'
    @short_password_error = 'Sorry, that password is too short. It needs to be eight characters or more.'
  end

  def visit_login_page
    find(:id, LOGIN_PAGE_ID).click
  end

  def fill_in_email_username_field(email)
    fill_in(EMAIL_USERNAME_FIELD_ID, with: email)
  end

  def fill_in_password_field(password)
    fill_in(PASSWORD_FIELD_ID, with: password)
  end

  def click_on_signin_button
    find(:id, SIGN_IN_BUTTON_ID).click
  end

  def error_message_box
    find(:css, ERROR_MESSAGE_CLASS).text
  end

  def short_error_message_box
    find(:css, SHORT_ERROR_MESSAGE_CLASS).text
  end
end
