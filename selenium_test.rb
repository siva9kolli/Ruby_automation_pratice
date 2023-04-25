require 'watir'
require 'pry'

browser = Selenium::WebDriver.for :safari
wait = Selenium::WebDriver::Wait.new(:timeout => 20)

browser.get 'https://www.saucedemo.com/'

browser
.find_element(:id, 'user-name')
.send_keys('standard_user')


browser
.find_element(:id, 'password')
.send_keys('secret_sauce')

browser
.find_element(:name, "login-button")
.click()

wait.until{browser.find_element(:css, ".title")}

heading_text = browser
.find_element(:css, ".title")
.text

p heading_text

raise "This is wrong" unless  browser.find_element(:css, ".title").displayed?

raise "This is wrong" unless  heading_text == "Products"

p "Test Passed"

#{}fail(msg = "Error: element not visible on page") if exists { browser.find_element(:css, ".title") } !=true

