require 'capybara/rspec'
require 'selenium-webdriver'
require 'pry'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome
  )
end

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(
    app,
    browser: :remote,
    desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome,
    url: 'http://localhost:4444/wd/hub'
  )
end

# Default.
Capybara.current_driver = :selenium_chrome
Capybara.app_host = 'https://www.freee.co.jp/'
