require 'appium_lib'

caps = {}
caps["platformName"] = "Android"
caps["platformVersion"] = "12.0"
caps["deviceName"] = "Samsung"
caps["automationName"] = "UiAutomator2"
caps["app"] = "test.apk"
caps["appPackage"] = "com.wam.android.alpha"
caps["appWaitActivity"] = "com.wam.android.login.PreLoginActivity, com.wam.android.authentication.mvp.views.PreLoginActivity"


appium_driver = Appium::Driver.new({
  "caps" => caps,
  "appium_lib" => {
    :server_url => "http://127.0.0.1:4723",
  },
}, true)
driver = appium_driver.start_driver

appium_driver.find_element(:xpath,"//*[@text='Log In']").click

