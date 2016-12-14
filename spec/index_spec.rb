require 'spec_helper'

puts __FILE__

require 'pages/index'

feature 'www.freee.co.jp' do
  context 'click of link for logged in' do

    given(:index_page) { Index.new }

    scenario 'displayed the page of sigin up' do
      index_page.load
      expect(index_page).to be_displayed
    end
  end
end
