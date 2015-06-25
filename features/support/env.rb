require 'rubygems'
require 'watir-webdriver'
require 'rspec/expectations'

url = "http://browserstackusername:browserstackkey@hub.browserstack.com/wd/hub"

Before do |scenario|

  caps = Selenium::WebDriver::Remote::Capabilities.new
    caps['os'] = 'OS X'
    caps['os_version'] = 'Snow Leopard'
    caps['browser'] = 'firefox'
    caps['browser_version'] = '15.0'
    caps['browserstack.debug'] = true

  browser= Watir::Browser.new(
      :remote,
      :url => url,
      :desired_capabilities => caps
  )
  @browser = browser
  puts "Browser is open"
end

After do |scenario|
  sleep(2)
  @browser.quit
end
