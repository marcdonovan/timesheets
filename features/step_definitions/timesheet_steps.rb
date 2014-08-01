require "net/http"
require "uri"

Given(/^I navigate to the Oracle Login$/) do
  @browser.goto 'https://myportal.pearson.com/portal/page/portal/main'
end

Given(/^I enter my user id$/) do
  @browser.text_field(:id => 'user1').when_present.set ENV['USERNAME']
end

Given(/^I enter my password$/) do
  @browser.text_field(:id => 'Password').when_present.set ENV['PASSWORD']
end

Given(/^I click login$/) do
  @browser.button(:id => 'Login').click
end

Then(/^The screen should say \"Welcome!\"/) do
  @browser.link(:text => 'ORACLE R12 - HR & Payroll').wait_until_present
  if !@browser.text.include? 'Welcome!'
    fail 'should see: Welcome!'
  end
end

Then(/^The screen should say "Time Entry"$/) do
  if !@browser.text.include? 'Time Entry'
    fail 'should see: Time entry'
  end
end

When(/^I wait and follow \"PHRP US Employee Self Service\"$/) do

  @browser.button(:id => 'NtfFullList').wait_until_present
  sleep(4)
  @browser.link(:text => 'PHRP US Employee Self Service').when_present.click
end

When(/^I follow "(.*?)"$/) do |capture|
  @browser.link(:text => capture).when_present.click
end

When(/^I enter my project$/) do
  @browser.text_field(:id => 'A231N1display').when_present.set ENV['PROJECT']
  sleep(8)
  el = @browser.table(:id => 'lovSuggestTable').when_present
  el.u(:text => ENV['PROJECT']).click
end

When(/^I enter my task$/) do
  @browser.text_field(:id => 'A241N1display').when_present.set ENV['TASK']
  sleep(5)
end

When(/^I enter my type$/) do
  @browser.text_field(:id => 'A251N1display').when_present.set ENV['TYPE']
  sleep(2)
#  el = @browser.table(:id => 'lovSuggestTable').when_present
 # el.u(:text => ENV['TYPE']).click
end

When(/^I enter my hours$/) do
  @browser.text_field(:id => 'B22_1_2').set '8'
  @browser.text_field(:id => 'B22_1_3').set '8'
  @browser.text_field(:id => 'B22_1_4').set '8'
  @browser.text_field(:id => 'B22_1_5').set '8'
  @browser.text_field(:id => 'B22_1_6').set '8'
end


When(/^I click Continue$/) do
  @browser.button(:id => 'review').click
end

When(/^I click Submit$/) do
  @browser.button(:id => 'HxcSubmit').when_present.click
end

When(/^The screen should say \"submitted successfully\"$/) do
  @browser.table(:id => 'FwkErrorBeanId').wait_until_present
  sleep(2)
  @browser.text.include? 'submitted successfully'
end

