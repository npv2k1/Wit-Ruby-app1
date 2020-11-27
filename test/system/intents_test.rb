require "application_system_test_case"

class IntentsTest < ApplicationSystemTestCase
  setup do
    @intent = intents(:one)
  end

  test "visiting the index" do
    visit intents_url
    assert_selector "h1", text: "Intents"
  end

  test "creating a Intent" do
    visit intents_url
    click_on "New Intent"

    fill_in "Intent", with: @intent.intent
    click_on "Create Intent"

    assert_text "Intent was successfully created"
    click_on "Back"
  end

  test "updating a Intent" do
    visit intents_url
    click_on "Edit", match: :first

    fill_in "Intent", with: @intent.intent
    click_on "Update Intent"

    assert_text "Intent was successfully updated"
    click_on "Back"
  end

  test "destroying a Intent" do
    visit intents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Intent was successfully destroyed"
  end
end
