require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'cucumber'
require 'webdrivers'
require 'webdriver.chrome.driver'
require 'selenium-webdriver'
require 'geckodriver'
require 'pry'
require 'rspec'
require 'site_prism'
require 'yaml'


ENVIRONMENT = YAML.load_file('./config/environment.yaml')

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox)
end

if ENV['chrome']
  Capybara.default_driver = :chrome
  Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
  end

elsif ENV['ie']
  Capybara.default_driver = :ie
  Capybara.register_driver :ie do |app|
    Capybara::Selenium::Driver.new(app, browser: :internet_explorer)
  end
end