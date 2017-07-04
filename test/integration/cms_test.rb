require "test_helper"

class CmsTest < ActionDispatch::IntegrationTest
  test "can access any page in SqlTemplate" do
    visit "/sql_templates"
    click_link "New Sql Template"
    fill_in "Body",     with: "My frist CMS template"
    fill_in "Path",     with: "about"
    fill_in "Format",   with: "html"
    fill_in "Locale",   with: "en"
    fill_in "Handler",  with: "erb"
    click_button "Create Sql template"
    assert_match "Sql template was successfully created.", page.body
    visit "/cms/about"
    assert_match "My frist CMS template", page.body
  end
end