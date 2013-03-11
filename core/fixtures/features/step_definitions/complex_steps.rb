# encoding: UTF-8

Given /^I am authenticated as user "(.*)" with password "(.*)"$/ do |username, password|
  step %{I go to the authentication page}
  page.execute_script("$('#user_session_username').val('#{username}');")
  page.execute_script("$('#user_session_password').val('#{password}');")
  page.execute_script("$('#user_session_submit').click();")
end

def log_in_with(creds)
  step %{I am authenticated as user "#{creds[:user]}" with password "#{creds[:password]}"}
  Thread.current[:user] = creds[:user]
  Thread.current[:credentials] = OpenStruct.new(:username => Thread.current[:user], :roles => creds[:roles])
end

Given /^I am authenticated as an author$/ do
  log_in_with valid_credentials
end

Given /^I am authenticated as a performance testing author$/ do
  log_in_with valid_performance_test_credentials
end

Given /^I am authenticated as a read only user$/ do
  log_in_with valid_read_only_credentials
end

Given /^I am authenticated as an editor$/ do
  log_in_with valid_editor_credentials
end

Given /^I am authenticated as "(.*)"$/ do |username|
  Thread.current[:user] = username
  step %{user "#{username}" has password "XXX"}
  step %{I am authenticated as user "#{username}" with password "XXX"}
end

Given /^user "(.+)" has password "(.+)"$/ do |username, password|
  Authentication::HardCodedAuthenticator::PASSWORD_FOR[username] = password
end

Then /^I should be prompted to authenticate$/ do
  step("I should be on the authentication page")
end

Then /^I should be authenticated as "(.+)"$/ do |username|
  page.should have_css("#logout [data-user='#{username}']")
end

Then /^I should not be authenticated$/ do
  page.should have_no_css("#logout")
end
