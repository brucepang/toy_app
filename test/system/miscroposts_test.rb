require "application_system_test_case"

class MiscropostsTest < ApplicationSystemTestCase
  setup do
    @miscropost = miscroposts(:one)
  end

  test "visiting the index" do
    visit miscroposts_url
    assert_selector "h1", text: "Miscroposts"
  end

  test "creating a Miscropost" do
    visit miscroposts_url
    click_on "New Miscropost"

    fill_in "Content", with: @miscropost.content
    fill_in "User", with: @miscropost.user_id
    click_on "Create Miscropost"

    assert_text "Miscropost was successfully created"
    click_on "Back"
  end

  test "updating a Miscropost" do
    visit miscroposts_url
    click_on "Edit", match: :first

    fill_in "Content", with: @miscropost.content
    fill_in "User", with: @miscropost.user_id
    click_on "Update Miscropost"

    assert_text "Miscropost was successfully updated"
    click_on "Back"
  end

  test "destroying a Miscropost" do
    visit miscroposts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Miscropost was successfully destroyed"
  end
end
