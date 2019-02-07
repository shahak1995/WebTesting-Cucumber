require_relative 'pages/bbc_homepage'

class BbcSite
  def bbc_homepage
    BbcHomepage.new
  end

  def bbc_login_page
    BbcLoginPage.new
  end
end
