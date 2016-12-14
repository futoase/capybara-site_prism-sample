require 'site_prism'

class Index < SitePrism::Page
  set_url '/'

  element :login_link, 'div.ncms-mod-header1__login a'
end
