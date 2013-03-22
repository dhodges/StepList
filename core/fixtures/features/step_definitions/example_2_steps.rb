When /^I bookmark the API page for poi "([^\"]*)" as "(.*)"$/ do |model_name, bookmark_name|
When /^I visit bookmark "(.*)"$/ do |bookmark_name|
Given /^I am authenticated as user "(.*)" with password "(.*)"$/ do |username, password|
Given /^I am authenticated as an author$/ do
Given /^I am authenticated as a performance testing author$/ do
Given /^I am authenticated as a read only user$/ do
Given /^I am authenticated as an editor$/ do
Given /^I am authenticated as "(.*)"$/ do |username|
Given /^user "(.+)" has password "(.+)"$/ do |username, password|
Then /^I should be prompted to authenticate$/ do
Then /^I should be authenticated as "(.+)"$/ do |username|
Then /^I should not be authenticated$/ do
Given /^I attempt to extract a manifest$/ do
Then /^I should see the repair manifest pane$/ do
Then /^I fix the errors$/ do
Then /^I press save$/ do
Then /^the manifest is created with title "([^\"]*)"$/ do |title|
Then /^I should not see the repair manifest pane$/ do
Then /^I should be shown a success message$/ do
Then /^I cannot change the language for the new book from "English"$/ do
Given /^a book called "([^\"]*)" exists in place "([^\"]*)"$/ do |book_title, place_name|
Given /^a chapter "([^\"]*)" exists for book "([^\"]*)"$/ do |chapter_name, book_title|
Given /^a parsed chapter "([^\"]*)" exists$/ do |chapter_name|
Given /^I have a book with ISBN "([^\"]*)"$/ do |isbn|
Given /^the following books exist:$/ do |books_table|
When /^I add a new place "([^\"]*)" as a child of "([^\"]*)"$/ do |child_place, place|
When /^I add a child page "([^\"]*)" to "([^\"]*)" with content "([^\"]*)"$/ do |child_page, page, child_page_content|
When /^I remove the child page "([^\"]*)" from "([^\"]*)" and confirm removal$/ do |child_page, page|
Given /^I start with a local latest_pois json file with 10 pois$/ do
Given /^I start with 15 incrementally saved local latest_pois json files$/ do
Given /^I start with 15 incrementally saved local published_pois json files$/ do
Given /^I start with a local places json file with Richmond$/ do
Given /^I start with a local content pack definition json file$/ do
Given /^I start with a local manifest json file$/ do
Given /^I start with a local narratives json file$/ do
Given /^I start with a local published_pois json file$/ do
Given /^I start with a local pois json file$/ do
Then /^I no longer have a local latest_pois json file$/ do
Then /^I no longer have any local latest_pois json files$/ do
Then /^I no longer have any local published_pois json files$/ do
Then /^I have (\d+) local pois json files$/ do |expected_count|
Then /^I have (\d+) pois in the poiRepository$/ do |expected_count|
Then /^I no longer have a local published_pois json file$/ do
Given /^I have loaded christo with a default content pack$/ do
Given /loaded the christo page$/ do
