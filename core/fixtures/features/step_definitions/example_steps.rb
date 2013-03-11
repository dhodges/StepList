When /^I view information about christo$/ do
Then /^I see an about dialog containing "([^\"]*)"$/ do |text|
When /^I dismiss the about dialog$/ do
Then /^I see a Christo extension missing error dialog$/ do
Then /^I don't see any about dialog$/ do
Then /debugger/ do
Then /^the radio button "([^\"]*)" should be checked$/ do |label|
Then /^the field named "([^\"]*)" should contain "([^\"]*)"$/ do |field, value|
Then /^the window title should be "([^\"]*)"$/ do |window_title|
When /^the test is pending$/ do
When /^(?:|I )fill in the following via javascript:$/ do |table|
When /^(?:|I )fill in "([^\"]*)" with "([^\"]*)" via javascript$/ do |field, value|
When /^I fill in the following via id with javascript:$/ do |table|
When /^(?:|I )fill in "([^\"]*)" with "([^\"]*)" via id with javascript$/ do |id, value|
Then /^the API response for poi "([^\"]*)" should be "([^\"]*)"$/ do |poi_name, expected_response|
Then /^the API response for bookmark "([^\"]*)" should be "([^\"]*)"$/ do |bookmark_name, expected_response|
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
Given /loaded the christo page with the '(.*?)' feature switch/ do |feature|
Given /loaded the christo page in less than "(\d*?)" seconds$/ do |timeout|
Given /stay connected after loading the christo page/ do
Given /disconnect after loading the christo page$/ do
Given /try to load the Christo page/ do
Given /^there have been changes to christo$/ do
Then /^christo updates should have been applied$/ do
Then /^collapsing and expanding the "([^\"]*)" pane (\d+) times should not change the pane width$/ do |pane_name, count|
Then /^the "([^\"]*)" \/ "([^\"]*)" resizer is not visible$/ do |first_pane_name, second_pane_name|
Then /^the "([^\"]*)" \/ "([^\"]*)" resizer is visible$/ do |first_pane_name, second_pane_name|
Given /^I collapse the "([^\"]*)" pane$/ do |pane_name|
When /^I expand the "([^\"]*)" pane$/ do |pane_name|
Then /^the "([^\"]*)" pane should be expanded$/ do |pane_name|
Then /^the "([^\"]*)" pane should be collapsed$/ do |pane_name|
Then /^the "([^\"]*)" pane should fill the page$/ do |pane_name|
Then /^the "([^\"]*)" pane should not fill the page$/ do |pane_name|
Then /^the page references an offline cache manifest$/ do
Then /^the "([^\"]*)" pane and the "([^\"]*)" pane should share the page$/ do |left_pane_name, right_pane_name|
Given /^I reload the page$/ do
Then /^the page should not throw any javascript errors$/ do
Then /^I should see the breadcrumb for the ancestors for "([^\"]*)" in the header$/ do |place_name|
Then /^the christo page title should be "([^\"]*)"$/ do |title|
Then /^I should see a place link for "([^\"]*)" in the places pane$/ do |place_name|
Then /^I should see a selected place link for "([^\"]*)" in the places pane$/ do |place_name|
Then /^I should not see a place link for "([^\"]*)" in the places pane$/ do |place_name|
When /^I click the expand place link for "([^\"]*)" in the places pane$/ do |place_name|
When /^I click the place link for "([^\"]*)" in the places pane$/ do |place_name|
Then /^the "([^\"]*)" expand link in the places pane should be empty$/ do |place_name|
When /^I click "([^\"]*)" in the places pane$/ do |place_name|
When /^I type "([^\"]*)" into the content search field and hit enter$/ do |search_text|
Then /^I should see the POI place divider "([^\"]*)"$/ do |place|
Then /^I should see the POI type divider "([^\"]*)"$/ do |type|
Then /^I click on the POI "([^\"]*)"$/ do |poi_name|
Then /^I should see "([^\"]*)" in the POIs pane$/ do |poi_name|
Then /^I should not see "([^\"]*)" in the POIs pane$/ do |poi_name|
Then /^I should see one POI type section of each type$/ do
Then /^the POIs pane type dividers should be sorted correctly$/ do
Then /^the POIs pane place dividers should be:$/ do |dividers|
Then /^I should see the summary review "([^\"]*)"$/ do |review_text|
Then /^I should see the detailed review "([^\"]*)"$/ do |review_text|
Then /^the reviews for POI "([^\"]*)" are collapsed$/ do |poi_name|
Then /^I should see an edit poi link for "([^\"]*)"$/ do |poi_name|
Then /^I should see an export link for page titled "([^\"]*)"$/ do |page_title|
Then /^I should see a create link for page titled "([^\"]*)"$/ do |page_title|
Then /^I should not see an export link for page titled "([^\"]*)"$/ do |page_title|
Then /^I should have "([^\"]*)" available as filters$/ do |filters|
Then /^I filter by Poi type "([^\"]*)"$/ do |type|
When /^I click on the place divider for "([^\"]*)"$/ do |place_name|
Then /^I should have the editing tools displayed$/ do
Then /^I should not have the editing tools displayed$/ do
And /^I select 'Display all descending content'$/ do
Then /^the manifest pane should contain:$/ do |manifest_tree|
Then /^the manifest pane should contain no product\-specific narrative$/ do
Then /^click the poi linker button$/ do
Then /^the poi linker should not appear$/ do
Then /^section "([^\"]*)" should be level (\d*)$/ do |section_id, class_attribute|
Then /^the manifest "([^\"]*)" should contain the page "([^\"]*)" under "([^\"]*)"$/ do |manifest_name, page_name, heading_name|
Then /^the manifest "([^\"]*)" should contain the poi "([^\"]*)" under "([^\"]*)"$/ do |manifest_name, poi_name, heading_name|
Given /^the manifest "([^\"]*)" exists with the following content:$/ do |name, xml|
Then /^the poi should be named "([^\"]*)"$/ do |poi_name|
Then /^the manifest "([^\"]*)" should have the following content in the database:$/ do |name, xml|
When /^I add an image to the manifest with path "([^\"]*)"$/ do |filename|
Then /^I remove images with no path from the manifest$/ do
Then /^I should see an image with path "([^\"]*)"$/ do |filename|
Then /^The first manifest image should have colour "([^\"]*)"$/ do |expected_colour|
When /^I add a map to the manifest with id "([^\"]*)"$/ do |id|
Then /^I remove maps with no id from the manifest$/ do
Then /^I should see a map with id "([^\"]*)"$/ do |id|
Then /^The first manifest map should have colour "([^\"]*)"$/ do |expected_colour|
When /^I select the first two content types from the first map in the manifest$/ do ||
Then /^the first map should have classes:$/ do |content_types|
When /^I remove the map class "([^\"]*)" from the first map$/ do |map_class|
Given /^the manifest "([^\"]*)" contains the following items, in order:$/ do |manifest_name, table|
Given /^the manifest "([^\"]*)" exists with links to "([^\"]*)" pois and "([^\"]*)" narrative pages$/ do |manifest_name, num_pois, num_narratives|
When /^I change the manifest type to "([^\"]*)"$/ do |manifest_type|
When /^I branch the manifest, making all content within it product specific$/ do
When /^I branch the manifest with short reviews$/ do
When /^I publish the manifest$/ do
When /^I move the "([^\"]*)" (narrative|poi) into the manifest under "([^\"]*)"$/ do |from_content_title, content_type, to_manifest_section|
When /^I select the "([^\"]*)" poi for moving$/ do |content_name|
When /^I select the "([^\"]*)" narrative for moving$/ do |content_name|
When /^I add a new product\-specific narrative under "([^\"]*)"$/ do |to_manifest_section|
Then /^the add_paragraph button is not available$/ do
Then /^the add_paragraph button is available$/ do
When /^I apply the colour "([^\"]*)" to the manifest item containing text "([^\"]*)"$/ do |colour, text|
Then /^the "([^\"]*)" section should display the following in order:$/ do |section_name, content_table|
Then /^the "([^\"]*)" section should( not)? appear under "([^\"]*)" within the manifest$/ do |section_name, should_be_displayed, parent_section|
Then /^the "([^\"]*)" section should have the following content types:$/ do |section_name, content_types|
Then /^the "([^\"]*)" section should have no content types$/ do |section_name|
When /^I add the content type "([^\"]*)" to the "([^\"]*)" section$/ do |content_type, section_name|
When /^I remove the content type "([^\"]*)" from the "([^\"]*)" section$/ do |content_type, section_name|
When /^I select the "([^\"]*)" (narrative|poi) in the manifest for moving$/ do |content_name, content_type|
Then /^The curation pane should indicate that I am in moving mode$/ do
Then /^The curation pane should no longer indicate that I am in moving mode$/ do
When /^I move the "([^\"]*)" (narrative|poi) into the manifest and place it (before|after) the "([^\"]*)" (narrative|poi)$/ do |from_content_name, from_content_type, position, to_content_name, to_content_type|
When /^I move the "([^\"]*)" (narrative|poi) within the manifest and place it (before|after) the "([^\"]*)" (narrative|poi)$/ do |from_content_name, from_content_type, position, to_content_name, to_content_type|
When /^I move the "([^\"]*)" section within the manifest and place it after the "([^\"]*)" section$/ do | from_section_name,  to_section_name |
When /^I remove the "([^\"]*)" (narrative|poi) from manifest$/ do |content_name, content_type|
When /^I drop the selected content (before|after) the "([^\"]*)" (narrative|poi) in the manifest$/ do |position, content_name, content_type|
Then /^the word count should be "([^\"]*)"$/ do |word_count|
Then /^the word count should be "([^\"]*)" with "([^\"]*)" estimated POIs$/ do |word_count, estimated_pois|
Then /^the section word count for "([^\"]*)" should be "([^\"]*)"$/ do |section_name, word_count|
Then /^the curation pane should contain the following items, in order:$/ do |table|
When /^I print the christo page$/ do
Then /^the content pane is not visible$/ do
Then /^the places pane is not visible$/ do
Then /^the header is not visible$/ do
Then /^the curation pane is visible$/ do
Then /^the "([^\"]*)" narrative should not appear in the manifest$/ do |full_path|
Then /^the "([^\"]*)" narrative should appear in the manifest$/ do |full_path|
When /^I add a top level manifest section called "([^\"]*)"$/ do |section_name|
When /^I add a manifest section called "([^\"]*)" under "([^\"]*)"$/ do |new_section_name, parent_section_name|
When /^I change the manifest section "([^\"]*)" to "([^\"]*)"$/ do |old_section_name, new_section_name|
When /^I change the first "([^\"]*)" narrative in the curation pane to "([^\"]*)"$/ do |narrative_name, new_content|
Then /^the second "([^\"]*)" narrative in the curation pane should be "([^\"]*)"$/ do |narrative_name, expected_content|
Then /^the second "([^\"]*)" narrative in the curation pane should include "([^\"]*)"$/ do |narrative_name, expected_content|
Then /^all "([^\"]*)" instances of "([^\"]*)" in the curation pane should have review "([^\"]*)"$/ do |count, name, expected_review|
Then /^the POI "([^\"]*)" in the curation pane should have notes "([^\"]*)"$/ do |poi_name, expected_notes|
When /^I change the first product\-specific narrative to "([^\"]*)"$/ do |new_content|
When /^I change the first product\-specific poi review detail to "([^\"]*)"$/ do |new_content|
When /^I change the first product\-specific poi review summary to "([^\"]*)"$/ do |new_content|
When /^I change the notes of the first product\-specific narrative to "([^\"]*)"$/ do |new_notes|
Then /^I click on the "([^\"]*)" poi in the manifest$/ do |name|
Then /^the manifest context should be "([^\"]*)"$/ do |title|
When /^I focus on section "([^\"]*)"$/ do |section_title|
When /^I scroll to section "([^\"]*)"$/ do |section_title|
When /^I click the move down in hierarchy button$/ do
When /^I click the move up in hierarchy button$/ do
Then /^The manifest breadcrumb should be "([^\"]*)"$/ do |manifest_breadcrumb|
Then /^The manifest breadcrumb should point to section "([^\"]*)"$/ do |section_title|
Then /^I should be focused on section "([^\"]*)"$/ do |section_title|
Then /^the POI link text "([^\"]*)" should be canonical$/ do |poi_name|
When /^I expand the notes view for the first product specific narrative$/ do
Then /^I expand the notes view for POI "([^\"]*)"$/ do |poi_id|
Then /^I expect to see the notes view for the first product specific narrative to be "([^\"]*)"$/ do |note_text|
Then /^I expect to see the notes view for the first narrative to be "([^\"]*)"$/ do |note_text|
Then /^I expect to see the notes "([^\"]*)" for POI "([^\"]*)"$/ do |note_text, poi_name|
Then /^the page "([^\"]*)" should have the breadcrumb "([^\"]*)"$/ do |page_name, breadcrumb|
Then /^the manifest "([^\"]*)" should contain the page "([^\"]*)" with content "([^\"]*)"$/ do |manifest_name, page_name, content|
Then /^the "([^\"]*)" narrative should contain draft content "([^\"]*)"$/ do |narrative_title, content|
Then /^the "(.*?)" section heading should( not)? be editable$/ do |section_title, should_not_be_editable|
When /^I have gone to the chapters page for book "(.*?)"$/ do |book_name|
Then /^it should show chapters "(.*?)" in order$/ do |chapter_names|
When /^I delete "(.*?)" chapter$/ do |chapter_name|
Then /^chapter "(.*?)" should have been deleted$/ do |chapter_name|
When /^I click on "(.*?)" chapter$/ do |chapter_name|
When /^I tick product\-specific POIs for chapter "([^\"]*)"$/ do |chapter_name|
Then /^the chapter "([^\"]*)" is marked as product\-specific$/ do |chapter_name|
Given /^I reload Krishna$/ do
Given /^I am editing the chapter "([^\"]*)" within "Kingdom of Mu"$/ do |chapter_name|
Given /^I am editing the product\-specific chapter "([^\"]*)" within "Kingdom of Mu"$/ do |chapter_name|
Then /^I mark the text "([^\"]*)" as a POI$/ do |poi_text|
Then /^I mark 2 paragraphs containing the text "([^\"]*)" as a POI$/ do |poi_text|
When /^I match "([^\"]*)" to new place "([^\"]*)"$/ do |text, place_name|
Then /^I click the place that includes "([^\"]*)"$/ do |place_name|
Then /^the POI form is visible$/ do
Then /^the POI form field "([^\"]*)" contains the text "([^\"]*)"$/ do |field, expected_text|
Then /^I change the review text to "([^\"]*)"$/ do |review_text|
Then /^the inline POI link "([^\"]*)" is visible$/ do |poi_text|
Then /^a processed POI containing "([^\"]*)", "([^\"]*)" and "([^\"]*)" is visible$/ do |string1, string2, string3|
Then /^a processed product\-specific POI containing "([^\"]*)", "([^\"]*)" and "([^\"]*)" is visible$/ do |string1, string2, string3|
Then /^I wait for Krishna to load$/ do
Then /^I expand all the headings$/ do
Then /^I click on the narrative containing "([^\"]*)"$/ do |narrative_text|
Then /^there is only one active editable text area$/ do
Then /^POI "([^\"]*)" exists$/ do |poi_name|
Then /^POI "([^\"]*)" does not have a phone number$/ do |poi_name|
Then /^I select the POI "([^\"]*)" from available matches$/ do |match_name|
Then /^I fill in the field "([^\"]*)" with "([^\"]*)"$/ do |field_name, value|
Then /^POI "([^\"]*)" has "([^\"]*)" of "([^\"]*)" in Atlas$/ do |poi_name, field_name, expected_value|
Then /^I save the POI$/ do
Then /^I save the POI as reference only$/ do
Then /^the extracted destination content model should be displayed with the heading "(.*?)"$/ do |heading|
When /^I save the extracted destination content model$/ do
Then /^there should be (\d+) processed narratives$/ do |count|
When /^I save and extract to a manifest named "(.*?)" in collection "(.*?)"$/ do |manifest_name, collection_name|
When /^I save the filed content$/ do
Given /^that I am connected$/ do
Given /^that I am disconnected$/ do
Given /^I have unsynced local changes to the place "([^\"]*)"$/ do |place_name|
Then /^there were no unexpected web requests while disconnected$/ do
Then /^I get a sync error$/ do
Given /^I have enabled asset debugging$/ do
Then /^I have disabled asset debugging$/ do
Then /^the first narrative in the manifest pane is not editable$/ do
Then /^the notes for the first narrative in the manifest pane are readonly$/ do
When /^I double\-click the poi link "([^\"]*)" in the manifest pane$/ do |link_title|
When /^I expand the "([^\"]*)" narrative$/ do |narrative_path|
When /^I toggle expansion on the narrative for the selected place$/ do
When /^I click add for the "([^\"]*)" narrative$/ do |narrative_path|
Then /^I should be prompted to expand "([^\"]*)" before adding$/ do |narrative_path|
Then /^I should be told the narrative "([^\"]*)" exists already$/ do |narrative_path|
When /^I am prompted to add a narrative section under "([^\"]*)"$/ do |parent|
When /^I expand all narrative under "([^\"]*)"$/ do |narrative_path|
Then /^I should see "([^\"]*)" in the narrative pane$/ do |narrative_path|
Then /^I should not see "([^\"]*)" in the narrative pane$/ do |narrative_path|
Then /^the "([^\"]*)" page in the narrative pane should be "([^\"]*)"$/ do |page_name, expected_content|
When /^I change the "([^\"]*)" narrative to "([^\"]*)"$/ do |page_name, content|
When /^I should see the draft content "([^\"]*)"$/ do |draft_content|
When /^I expand the notes field for the "([^\"]*)" narrative$/ do |page_name|
When /^I enter "([^\"]*)" into the notes field for the "([^\"]*)" narrative$/ do |notes_text, page_name|
When /^I edit the notes field for the "(.*?)" narrative to be:$/ do |page_name, notes_text|
Then /^the notes for the "([^\"]*)" narrative should be "([^\"]*)"$/ do |page_name, notes_text|
Then /^the notes for the "([^\"]*)" narrative should be:$/ do |page_name, notes_text|
When /^I double\-click "([^\"]*)" in the "([^\"]*)" narrative$/ do |link_title, narrative|
Then /^the manifest "(.*?)" does not contain the canonical link "(.*?)"$/ do |title, link_href|
Then /^the manifest "(.*?)" should contain the canonical link "(.*?)"$/ do |title, link_href|
Then /^the "(.*?)" narrative in the narrative pane is not editable$/ do |page_name|
Then /^the notes of the "(.*?)" narrative in the narrative pane are readonly$/ do |page_name|
When /^I double\-click the poi link "([^\"]*)" in the narrative pane$/ do |link_title|
Then /^the add narrative button is unavailable for the "(.*?)" narrative in the narrative pane$/ do |name|
When /^I double\-click "([^\"]*)" in the review for "([^\"]*)" in the manifest pane$/ do |link_title, poi_name|
When /^I edit the notes of "([^\"]*)" in the curation pane to be "([^\"]*)"$/ do |poi_name, notes|
Then /^the name of the poi "(.*?)" in the manifest pane is not editable$/ do |poi_name|
Then /^the subtype of the poi "(.*?)" in the manifest pane is not editable$/ do |poi_name|
Then /^all detail fields of the poi "(.*?)" in the manifest pane are not editable$/ do |poi_name|
Then /^all prac fields of the poi "(.*?)" in the manifest pane are not editable$/ do |poi_name|
Then /^all attributes of the poi "(.*?)" in the manifest pane are not toggable$/ do |poi_name|
Then /^the summary review of the poi "(.*?)" in the manifest pane is( not)? editable$/ do |poi_name, should_or_should_not|
Then /^the detail review of the poi "(.*?)" in the manifest pane is( not)? editable$/ do |poi_name, should_or_should_not|
Then /^the notes of the poi "(.*?)" in the manifest pane are( not)? readonly$/ do |poi_name, should_or_should_not|
Then /^the edit button of the poi "(.*?)" in the manifest pane is unavailable$/ do |poi_name|
When /^I enable the "([^\"]*)" property for "([^\"]*)"$/ do |property, poi_name|
When /^I enable the "([^\"]*)" property$/ do |property|
When /^I add POI to "(.*?)"$/ do |place_name|
When /^I apply the changes$/ do
Then /the create POI button for "([^\"]*)" is unavailable/ do |place_name|
When /^I edit the name of "([^\"]*)" to be "([^\"]*)"$/ do |name, new_name|
When /^I edit the poi localisation review summary to be "([^\"]*)"$/ do |summary|
When /^I open the POI form for "([^\"]*)" via the curation pane$/ do |poi_name|
When /^I open the POI form for "([^\"]*)" via the POI pane$/ do |poi_name|
When /^I press "([^\"]*)" in the POI form$/ do |button|
When /^I edit the review summary of "([^\"]*)" in the curation pane to be "([^\"]*)"$/ do |poi_name, review_summary|
When /^I edit the review summary of "([^\"]*)" in the curation pane to be something random$/ do |poi_id|
When /^I create and save a new POI called "([^\"]*)" in "([^\"]*)"$/ do |poi_name, place|
When /^I set the first phone number to "([^\"]*)" of type "([^\"]*)" in the poi form$/ do |phone_number, phone_text|
When /^I set the first transport type to "([^\"]*)" with transport route "([^\"]*)" in the poi form$/ do |transport_type, transport_route|
When /^I expand the poi "([^\"]*)" in the POIs pane$/ do |poi_name|
When /^I expand the pois$/ do
When /^I add "([^\"]*)" as a "([^\"]*)" phone number in the poi form$/ do |phone_number, phone_text|
When /^I remove the phone number in position (\d+) in the poi form$/ do |phone_position|
Then /^the following telephones should be visible for "([^\"]*)" the (curation|POIs) pane:$/ do |poi_name, pane, phone_list|
Then /^the poi "([^\"]*)" should have (\d+) phone numbers? showing in the (curation|POIs) pane$/ do |poi_name, phone_count, pane|
Then /^the poi "([^\"]*)" in the POIs pane should have review "([^\"]*)"$/ do |poi_name, review|
Then /^the poi should have the following telephones:$/ do |phone_list|
When /^I move the poi "([^\"]*)" into the manifest under "([^\"]*)"$/ do |poi_name, to_manifest_section|
When /^I edit the review summary of "([^\"]*)" to be "([^\"]*)"$/ do |poi_name, review_summary|
When /^I edit the review detail in the POI form to be "([^\"]*)"$/ do |review_detail|
When /^I edit the review summary in the POI form to be "([^\"]*)"$/ do |review_summary|
When /^I edit the notes in the POI form to be "([^\"]*)"$/ do |notes|
Then /^in the (curation|POIs) pane I prepend the first phone number of "(.*?)" with "(.*?)"$/ do |pane, poi_name, phone_number_edit|
When /^I double\-click "([^\"]*)" in the review for "([^\"]*)" in the pois pane$/ do |link_title, poi_name|
Then /^I should see the poi form for "([^\"]*)"$/ do |poi_title|
Then /^I should not see the poi form$/ do
Given /^I change the poi type to be "([^\"]*)"$/ do |poi_type|
Then /^the name of the poi "(.*?)" in the POIs pane is not editable$/ do |poi_name|
Then /^the subtype of the poi "(.*?)" in the POIs pane is not editable$/ do |poi_name|
Then /^all detail fields of the poi "(.*?)" in the POIs pane are not editable$/ do |poi_name|
Then /^all prac fields of the poi "(.*?)" in the POIs pane are not editable$/ do |poi_name|
Then /^all attributes of the poi "(.*?)" in the POIs pane are not toggable$/ do |poi_name|
Then /^the summary review of the poi "(.*?)" in the POIs pane is not editable$/ do |poi_name|
Then /^the detail review of the poi "(.*?)" in the POIs pane is not editable$/ do |poi_name|
Then /^the notes of the poi "(.*?)" in the POIs pane are readonly$/ do |poi_name|
Then /^the edit button of the poi "(.*?)" in the POIs pane is unavailable$/ do |poi_name|
When /^I should see save errors$/ do
When /^I save my changes$/ do
When /^I store my changes$/ do
When /try to synchronise with Lonely Planet$/ do
Then /^the save button should be disabled$/ do
Then /^the save button should be enabled$/ do
Then /^the POI "([^\"]*)" should have save errors$/ do |poi_name|
Then /^the POI "([^\"]*)" should have no save errors$/ do |poi_name|
Then /^the "([^\"]*)" narrative should have save errors$/ do |narrative_path|
Then /^the "([^\"]*)" narrative should have no save errors$/ do |narrative_path|
Then /^the save errors message should be:$/ do |error_text|
Given /^I have a nokia export template$/ do
Given /^I have a product "([^\"]*)"$/ do |product_name|
Given /^collection "([^\"]*)" exists with manifests "([^\"]*)"$/ do |collection_name, manifest_names|
Then /^I click Include Sub\-Places In Content Pack$/ do
Given /^I have the "([^\"]*)" collection in my content pack$/ do |collection_name|
Given /^I have the following items in my content pack:$/ do |item_list|
Given /^my content pack has published-only (enabled|disabled)$/ do |published_only|
When /^I open the content pack management dialog$/ do
When /^I remove "([^\"]*)" from my content pack definition$/ do |manifest|
When /^I remove "([^\"]*)" from my content pack definition and sync$/ do |manifest|
When /^I remove manifest "([^\"]*)" from my content pack definition and sync$/ do |manifest|
Then /^I see "([^\"]*)" loaded in the curation pane$/ do |manifest|
Then /^I see only the following manifests in the Manifest drop down list:$/ do |table|
When /^I select "([^\"]*)" from the Manifest drop down list( immediately after)?$/ do |manifest, immediately_after|
Then /^I select the "([^\"]*)" collection$/ do |collection_name|
When /^I (?:should be able to )?sync my configuration with Lonely Planet$/ do
Then /^I wait until manifest loads$/ do
Then /^Include Sub\-Places In Content Pack is checked$/ do
Then /^Include Sub\-Places In Content Pack is not checked$/ do
Given /^I choose Published Content in the content management dialog$/ do
Given /^"([^\"]*)" is selected in place list$/ do |place_name|
Then /^manifests "([^\"]*)" appear in the manifest drop down list$/ do |manifest_names|
Given /^manifests "([^\"]*)" will appear in manifest list$/ do |manifest_names|
Then /^no results will appear in search results$/ do
When /^searching for collection "([^\"]*)"$/ do |collection_name|
Then /^the collections should appear in the following order:$/ do |collection_names|
Given /^an on\-the\-road manifest named "([^\"]*)" exists with (.*) pois$/ do |manifest_title, poi_count|
When /^I replace the manifest xml with "([^\"]*)"$/ do |new_value|
Then /^I should see an export link to "([^\"]*)"$/ do |link_text|
Then /^I should not see an export link to "([^\"]*)"$/ do |link_text|
When /^I double\-click "([^\"]*)" in the review for "([^\"]*)" in the curation pane$/ do |link_title, poi_name|
When /^I double\-click the poi link "([^\"]*)" in the curation pane$/ do |link_title|
Then /^the browser should warn me before closing$/ do
When /^I replace the narrative draft content with "([^\"]*)"$/ do |new_value|
When /^I click on the page titled "([^\"]*)" in the narrative pane$/ do |page_name|
When /^I expand the "([^\"]*)" page in the narrative pane$/ do |title|
When /^search for content containing "([^\"]*)"$/ do |search_term|
When /^I expand all the content under "([^\"]*)"$/ do |title|
When /^I collapse the "([^\"]*)" page in the narrative pane$/ do |title|
When /^I collapse all the content under "([^\"]*)"$/ do |title|
Then /^the narrative pane should show the content "([^\"]*)" for the page "([^"]*)"$/ do |content, page_title|
Then /^the narrative pane should have no content for the page "([^"]*)"$/ do |title|
Then /^the narrative pane should contain a page called "([^\"]*)" under "([^\"]*)"$/ do |title, path|
Then /^the narrative pane should not show a page called "([^\"]*)" under "([^\"]*)"$/ do |title, path|
Then /^I should see a page titled "([^\"]*)" in the narrative pane$/ do |title|
Then /^I should not see a page titled "([^\"]*)" in the narrative pane$/ do |title|
Then /^I should see a disabled page titled "([^\"]*)" in the narrative pane$/ do |title|
Then /^the following DCMs should be visible in order in the narrative pane:$/ do |dcm_list|
Then /^the "([^\"]*)" page should display the following child pages in order:$/ do |page_name, child_pages|
Given /^the following pages exist:$/ do |pages_table|
Given /^the following published pages exist:$/ do |pages_table|
Then /^the "([^\"]*)" page should contain "([^\"]*)"$/ do |page_name, contents|
Then /^the "([^\"]*)" published page should contain "([^\"]*)"$/ do |page_name, contents|
Then /^the "([^\"]*)" page should contain draft content "([^\"]*)"$/ do |page_name, contents|
Then /^the "([^\"]*)" page should have blank draft content$/ do |page_name|
Then /^the "([^\"]*)" page should have no published content$/ do |page_name|
Then /^the "([^\"]*)" page should have "([^\"]*)" as a child page$/ do |page_name, child_name|
Then /^there should be no page named "([^\"]*)" in atlas$/ do |narrative_path|
Given /^I am loading my content pack from a proxy server$/ do
Then /^Create a narrative section in the CMS titled "(.*?)" under "(.*?)"$/ do |title, path|
When /^I set the content of narrative "(.*?)" in the CMS to "(.*?)"$/ do |path, content|
When /^I add random words to the manifest narrative "(.*?)"$/ do |path|
Then /^I insert a random POI link into the content of manifest narrative "(.*?)"$/ do |path|
Then /^I select the manifest narrative "(.*)?"$/ do |path|
Then /^I remove some words from the manifest narrative "(.*?)"$/ do |path|
Then /^I add random text to the notes of manifest narrative "(.*?)"$/ do |path|
Then /^I create a POI within "(.*?)", filling in all fields$/ do |place_name|
Then /^I amend the pracs for manifest POI "(.*?)"$/ do |name|
Then /^I change the icons for manifest POI "(.*?)"$/ do |name|
Then /^I add random words to the review of manifest POI "(.*?)"$/ do |name|
Then /^I insert a random POI link into the review of manifest POI "(.*?)"$/ do |name|
Then /^I delete words in the review of manifest POI "(.*?)"$/ do |name|
Then /^I add random text to the notes of manifest POI "(.*?)"$/ do |name|
Then /^I move the manifest POI "(.*?)" before the POI "(.*?)"$/ do |poi, to_poi|
Then /^I move the manifest POI "(.*?)" after the POI "(.*?)"$/ do |poi, after_poi|
Then /^I remove the manifest POI "(.*?)"$/ do |poi_name|
When /^I am prompted to add a place under "([^\"]*)"$/ do |parent|
When /^I wait for the places pane to update$/ do
When /^I add Place to "(.*?)"$/ do |place_name|
Given /^these places exist:$/ do |places_table|
Given /^a place named "([^\"]*)" exists with parent "([^\"]*)"$/ do |child_name, parent_name|
Given /^a place named "([^\"]*)" exists$/ do |place_name|
Given /^a place named "([^\"]*)" exists with 0 pois$/ do |place_name|
Then /^a place called "([^\"]*)" exists as a child of "([^\"]*)"$/ do |child_name, parent_name|
Then /^I wait until a place called "([^\"]*)" exists as a child of "([^\"]*)"$/ do |child_name, parent_name|
Then /^(.*) pois exist under "([^\"]*)"$/ do |poi_count, place_name|
Given /^there is a place with descendants$/ do |table|
Then /^the place named "([^\"]*)" should have the following attributes:$/ do |place_name, table|
When /^I search for a place named "([^\"]*)"$/ do |name|
Given /^I wait for the backend poi form to load$/ do
Given /^poi "([^\"]*)" has review summary "([^\"]*)"$/ do |poi_name, review_summary|
Given /^poi "([^\"]*)" has been merged into poi "([^\"]*)"$/ do |dupe_name, target_name|
Given /^a localised poi "([^\"]*)" exists with language_code "([^\"]*)"$/ do |name, language_code|
Given /^a localised poi "([^\"]*)" exists with type "([^\"]*)"$/ do |name, type|
Given /^a localised poi "([^\"]*)" exists with subtype "([^\"]*)"$/ do |name, subtype|
Given /^a localised poi "([^\"]*)" exists$/ do |name|
Given /^a POI has the following localisations:$/ do |pois_table|
Given /^the following POI localisations exist:$/ do |pois_table|
Then /^the following POI localisations will exist:$/ do |pois_table|
Then /^the following POI localisations will not exist:$/ do |pois_table|
Given /^POI "([^\"]*)" has a "([^\"]*)" property of "([^\"]*)"$/ do |poi_name, key, value|
Then /^the review summary of "([^\"]*)" should be "([^\"]*)"$/ do |poi_name, review_summary|
Then /^the notes of "([^\"]*)" should be "([^\"]*)"$/ do |poi_name, notes|
Then /^the poi named "([^\"]*)" should have property "([^\"]*)" with value "([^\"]*)"$/ do |poi_name, property_key, property_value|
Then /^the POI "([^\"]*)" should be published$/ do |poi_name|
Then /^the POI "([^\"]*)" should be published and without a draft$/ do |poi_name|
Then /^the POI "([^\"]*)" should be a draft only$/ do |poi_name|
Given /^a published poi localisation "([^\"]*)" exists with type "([^\"]*)" and place "([^\"]*)"$/ do |name, type, place|
Given /^the published poi localisation "([^\"]*)" has an address with street "([^\"]*)", locality "([^\"]*)", extras "([^\"]*)" and postcode "([^\"]*)"$/ do |name, street, locality, extras, postcode|
Then /^the draft of poi localisation "([^\"]*)" should have an address with street "([^\"]*)", region "([^\"]*)", neighbourhood "([^\"]*)", locality "([^\"]*)", extras "([^\"]*)" and postcode "([^\"]*)"$/ do |name, street, region, neighbourhood, locality, extras, postcode|
When /^the "([^\"]*)" POI should be saved$/ do |poi_name|
Then /^the "([^\"]*)" localisation of poi "([^\"]*)" does not have a draft$/ do |language, poi|
Then /^the API should return the following information for poi "([^\"]*)":$/ do |poi_name, table|
Given /^I have a published only POI named "([^\"]*)"$/ do |poi_name|
Given /^I have a published and draft POI named "([^\"]*)"$/ do |poi_name|
Given /^I have a draft only POI named "([^\"]*)"$/ do |poi_name|
Given /^another user saves a review summary for poi "([^\"]*)" of "([^\"]*)"$/ do |poi_name, review_summary|
Then /^the poi "([^\"]*)" has a review summary of "([^\"]*)"$/ do |poi_name, review_summary|
Then /^the poi "([^\"]*)" has a review detail of "([^\"]*)"$/ do |poi_name, review_detail|
Then /^the manifest "([^\"]*)" has a review summary of "([^\"]*)" for poi "([^\"]*)"$/ do |manifest_name, review_summary, poi_name|
When /^I fill in the first "([^\"]*)" field with "([^\"]*)"$/ do |field_class, value|
Given /^I select "([^\"]*)" from the "([^\"]*)" drop down list$/ do |item, menu_name|
Then /^the poi "([^\"]*)" has the "([^\"]*)" property$/ do |poi_name, property|
Then /^the poi "([^\"]*)" does not have the "([^\"]*)" property$/ do |poi_name, property|
When /^another user disables the "([^\"]*)" property for "([^\"]*)"$/ do |property, poi_name|
Then /^the poi "([^\"]*)" has a "([^\"]*)" phone number of "([^\"]*)"$/ do |poi_name, phone_type, phone_number|
Given /user makes the following changes to poi "([^\"]*)":$/ do |poi_name, table|
Then /^poi "([^\"]*)" has the following data:$/ do |poi_name, table|
Then /^the highlighted localisation should be "([^\"]*)"$/ do |language|
Then /^the available languages for a new localisation should not include "([^\"]*)"$/ do |lang_code|
Then /^the verified on field should contain today's date$/ do
Then /^the published by field should contain "(.*?)"$/ do |user_name|
Then /^the pois pane should contain the poi "(.*?)"$/ do |name|
Then /^the pois pane should not contain the poi "(.*?)"$/ do |name|
Then /^sleep for (\d+) seconds$/ do |seconds|
When /^the next confirm dialog will be accepted$/ do
Then /^I should have no dialog$/ do
Then /^I get an alert saying "([^\"]*)"$/ do |text|
Then /^I expect and accept a confirm saying "([^\"]*)"$/ do |text|
Then /^I expect and reject a confirm saying "([^\"]*)"$/ do |text|
When /^I fill in "([^\"]*)" into the active field$/ do |value|
When /^I click "([^\"]*)"$/ do |field|
Then /^it should display "([^\"]*)"$/ do |text|
Then /^show me the page$/ do
When /^I enter "([^\"]*)"$/ do |string|
And /^I send (.*) to "(.*)"$/ do |key, element|
And /^I send (.*) to the active field$/ do |key|
When /^I create shell pois under "([^\"]*)" for the manifest "([^\"]*)"$/ do |place_name, manifest_title|
Then /^the shell poi creator output contains "([^\"]*)"$/ do |expected_output|
Given /^there is a completed task to "([^\"]*)"$/ do |method_name|
Given /^the task "([^\"]*)" has a success message of "([^\"]*)"$/ do |method_name, message|
Given /^there is a running task to "([^\"]*)"$/ do |method_name|
Given /^there is a failed task to "([^\"]*)"$/ do |method_name|
Then /^the read only "([^\"]*)" field should contain "([^\"]*)"$/ do |field, value|
When /^I choose to keep "([^\"]*)" when merging$/ do |winner_name|
When /^I set the bulk poi editor to "([^\"]*)"$/ do |place_name|
When /^I set the bulk poi editor to invalid place "([^\"]*)"$/ do |place_full_name|
When /^I save the draft POI$/ do
Then /^the delete button is disabled$/ do
Given /^(?:|I )am on (.+)$/ do |page_name|
When /^(?:|I )go to (.+)$/ do |page_name|
When /^(?:|I )press "([^\"]*)"(?: within "([^\"]*)")?$/ do |button, selector|
When /^(?:|I )follow "([^\"]*)"(?: within "([^\"]*)")?$/ do |link, selector|
When /^(?:|I )fill in "([^\"]*)" with "([^\"]*)"(?: within "([^\"]*)")?$/ do |field, value, selector|
When /^(?:|I )fill in "([^\"]*)" for "([^\"]*)"(?: within "([^\"]*)")?$/ do |value, field, selector|
When /^(?:|I )fill in the following(?: within "([^\"]*)"|)?:$/ do |selector, table|
When /^(?:|I )select "([^\"]*)" from "([^\"]*)"(?: within "([^\"]*)")?$/ do |value, field, selector|
When /^(?:|I )check "([^\"]*)"(?: within "([^\"]*)")?$/ do |field, selector|
When /^(?:|I )uncheck "([^\"]*)"(?: within "([^\"]*)")?$/ do |field, selector|
When /^(?:|I )choose "([^\"]*)"(?: within "([^\"]*)")?$/ do |field, selector|
When /^(?:|I )attach the file "([^\"]*)" to "([^\"]*)"(?: within "([^\"]*)")?$/ do |path, field, selector|
Then /^(?:|I )should see "([^\"]*)"(?: within "([^\"]*)")?$/ do |text, selector|
Then /^(?:|I )should see \/([^\/]*)\/(?: within "([^\"]*)")?$/ do |regexp, selector|
Then /^(?:|I )should not see "([^\"]*)"(?: within "([^\"]*)")?$/ do |text, selector|
Then /^the "([^\"]*)" field(?: within "([^\"]*)")? should contain "([^\"]*)"$/ do |field, selector, expected_value|
Then /^the "([^\"]*)" field(?: within "([^\"]*)")? should not contain "([^\"]*)"$/ do |field, selector, value|
Then /^the "([^\"]*)" checkbox(?: within "([^\"]*)")? should be checked$/ do |label, selector|
Then /^the "([^\"]*)" checkbox(?: within "([^\"]*)")? should not be checked$/ do |label, selector|
Then /^(?:|I )should be on (.+)$/ do |page_name|
Then /^I should see the "([^\"]*)" table$/ do |table_id, expected_table|
Then /^I should see "(.+)" message "(.+)"$/ do |key, text|
Then /^the "([^\"]*)" select should contain "([^\"]*)"$/ do |field, value|
