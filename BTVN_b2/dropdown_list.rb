require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome 
driver.get 'http://www.practiceselenium.com/check-out.html'
options = driver.find_element(:id,"card_type")
puts options.inspect
select_object = Selenium::WebDriver::Support::Select.new(options)
select_object.select_by(:text, 'Visa')
sleep 2
driver.quit
