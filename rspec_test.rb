require 'watir'

browser = Selenium::WebDriver.for :safari
wait = Selenium::WebDriver::Wait.new(:timeout => 20)

describe "Enter Username" do
  it "Username should be visible" do

browser.get 'https://www.saucedemo.com/'

browser
.find_element(:id, 'user-name')
.send_keys('standard_user')


p "Test Passed"


    #{}expect(@driver.title).to eql("BrowserStack - Google Search")
  end
end

describe "Enter Username" do
  it "Username should be visible" do

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


  end
end