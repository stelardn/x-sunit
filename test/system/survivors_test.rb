require "application_system_test_case"

class SurvivorsTest < ApplicationSystemTestCase
  setup do
    @survivor = survivors(:one)
  end

  test "visiting the index" do
    visit survivors_url
    assert_selector "h1", text: "Survivors"
  end

  test "should create survivor" do
    visit survivors_url
    click_on "New survivor"

    fill_in "Age", with: @survivor.age
    fill_in "Gender", with: @survivor.gender
    fill_in "Last location", with: @survivor.last_location
    click_on "Create Survivor"

    assert_text "Survivor was successfully created"
    click_on "Back"
  end

  test "should update Survivor" do
    visit survivor_url(@survivor)
    click_on "Edit this survivor", match: :first

    fill_in "Age", with: @survivor.age
    fill_in "Gender", with: @survivor.gender
    fill_in "Last location", with: @survivor.last_location
    click_on "Update Survivor"

    assert_text "Survivor was successfully updated"
    click_on "Back"
  end

  test "should destroy Survivor" do
    visit survivor_url(@survivor)
    click_on "Destroy this survivor", match: :first

    assert_text "Survivor was successfully destroyed"
  end
end
