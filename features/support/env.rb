#Gems import
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'cucumber'
require 'webdrivers'
require 'selenium-webdriver'
require 'pry'
require 'rspec'
require 'site_prism'
require 'yaml'

#Environment variable 
ENVIRONMENT = YAML.load_file('./config/environment.yaml')

# Browsers
BROWSER = ENV['BROWSER']

#Browsers Config
Capybara.register_driver :selenium do |app|
  if BROWSER.eql?('chrome')
    option = ::Selenium::WebDriver::Chrome::Options.new(
      args: ['--start-fullscreen', '--disable-infobars']
    )
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: option)
  elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(
      app, browser: :firefox,
           desired_capabilities: Selenium::WebDriver::Remote::Capabilities
        .firefox(marionette: true)
    )
  end
end

# Principal browser
Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox)
end

# Timeout
Capybara.default_max_wait_time = 60