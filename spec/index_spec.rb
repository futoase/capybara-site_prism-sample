require 'spec_helper'

require 'pages/www/index'
require 'pages/secure/login'

feature 'www.freee.co.jp' do
  context 'click of link for logged in' do

    given(:index_page) { WWW::Index.new }
    subject(:login_page) { Secure::Login.new }

    scenario 'displayed the page of sigin up' do
      index_page.load
      binding.pry
      expect(index_page).to be_displayed

      index_page.login_link.click
      expect(login_page).to be_displayed
    end
  end
end
