require 'watir'
require 'webdrivers'
require 'faker'

driver = Watir::Browser.new

driver.goto('https://www.saucedemo.com/')
driver
.text_field(id:'user-name')
.set 'standard_user'


driver.text_field(id:'password').set 'secret_sauce'
driver.button(name:"login-button").click

