require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome

Given("open Revoup page") do
  driver.navigate.to "https://partner-02.st.revoup.ru"
end

Then("click to Login button") do
  driver.find_element(:css, '.buttonContainer input').click
end

Then("validate empty fields") do
  validation = driver.find_element(:class, 'formBlock').find_element(:xpath, './/*[contains(., "Неправильный логин или пароль")]').text
  log(validation)
  expect(validation).to eq('Неправильный логин или пароль')  
end
