require "application_system_test_case"

class RequestsTest < ApplicationSystemTestCase
  setup do
    @request = requests(:one)
  end

  test "visiting the index" do
    visit requests_url
    assert_selector "h1", text: "Requests"
  end

  test "creating a Request" do
    visit requests_url
    click_on "New Request"

    fill_in "Category", with: @request.category_id
    fill_in "Date", with: @request.date
    fill_in "Description", with: @request.description
    fill_in "Housenumber", with: @request.housenumber
    fill_in "Landmark", with: @request.landmark
    fill_in "Requestoption", with: @request.requestoption_id
    fill_in "Streetname", with: @request.streetname
    fill_in "Time", with: @request.time
    fill_in "Title", with: @request.title
    click_on "Create Request"

    assert_text "Request was successfully created"
    click_on "Back"
  end

  test "updating a Request" do
    visit requests_url
    click_on "Edit", match: :first

    fill_in "Category", with: @request.category_id
    fill_in "Date", with: @request.date
    fill_in "Description", with: @request.description
    fill_in "Housenumber", with: @request.housenumber
    fill_in "Landmark", with: @request.landmark
    fill_in "Requestoption", with: @request.requestoption_id
    fill_in "Streetname", with: @request.streetname
    fill_in "Time", with: @request.time
    fill_in "Title", with: @request.title
    click_on "Update Request"

    assert_text "Request was successfully updated"
    click_on "Back"
  end

  test "destroying a Request" do
    visit requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Request was successfully destroyed"
  end
end
