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

# Principal browser
Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome) # you can change for firefox, changing :chrome for :firefox
end

# Timeout
Capybara.default_max_wait_time = 60