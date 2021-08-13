
#require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'


World(Capybara::DSL)
World(Capybara::RSpecMatchers)


Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://www.fleury.com.br'
  Capybara.page.driver.browser.manage.window.maximize
  config.default_max_wait_time = 10
end