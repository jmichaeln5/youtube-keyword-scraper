require "application_system_test_case"

class SitesTest < ApplicationSystemTestCase
  setup do
    @site = sites(:one)
  end

  test "visiting the index" do
    visit sites_url
    assert_selector "h1", text: "Sites"
  end

  test "creating a Site" do
    visit sites_url
    click_on "New Site"

    fill_in "Description", with: @site.description
    fill_in "Keyword list", with: @site.keyword_list
    fill_in "Link", with: @site.link
    fill_in "Thumbnail link", with: @site.thumbnail_link
    fill_in "Title", with: @site.title
    fill_in "User", with: @site.user_id
    click_on "Create Site"

    assert_text "Site was successfully created"
    click_on "Back"
  end

  test "updating a Site" do
    visit sites_url
    click_on "Edit", match: :first

    fill_in "Description", with: @site.description
    fill_in "Keyword list", with: @site.keyword_list
    fill_in "Link", with: @site.link
    fill_in "Thumbnail link", with: @site.thumbnail_link
    fill_in "Title", with: @site.title
    fill_in "User", with: @site.user_id
    click_on "Update Site"

    assert_text "Site was successfully updated"
    click_on "Back"
  end

  test "destroying a Site" do
    visit sites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Site was successfully destroyed"
  end
end
