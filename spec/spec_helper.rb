require 'capybara/rspec'

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome
  )
end

Capybara.current_driver = :selenium_chrome
Capybara.app_host = 'https://www.freee.co.jp/'
