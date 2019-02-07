require 'capybara/dsl'

class BbcHomepage
  include Capybara::DSL

  # Page Objects
  HOMEPAGE_URL = 'https://www.bbc.co.uk'.freeze

  def visit_homepage
    visit(HOMEPAGE_URL)
  end
end
