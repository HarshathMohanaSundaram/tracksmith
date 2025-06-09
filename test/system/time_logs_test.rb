require "application_system_test_case"

class TimeLogsTest < ApplicationSystemTestCase
  setup do
    @time_log = time_logs(:one)
  end

  test "visiting the index" do
    visit time_logs_url
    assert_selector "h1", text: "Time logs"
  end

  test "should create time log" do
    visit time_logs_url
    click_on "New time log"

    fill_in "Time spent", with: @time_log.time_spent
    fill_in "Topic", with: @time_log.topic_id
    click_on "Create Time log"

    assert_text "Time log was successfully created"
    click_on "Back"
  end

  test "should update Time log" do
    visit time_log_url(@time_log)
    click_on "Edit this time log", match: :first

    fill_in "Time spent", with: @time_log.time_spent
    fill_in "Topic", with: @time_log.topic_id
    click_on "Update Time log"

    assert_text "Time log was successfully updated"
    click_on "Back"
  end

  test "should destroy Time log" do
    visit time_log_url(@time_log)
    click_on "Destroy this time log", match: :first

    assert_text "Time log was successfully destroyed"
  end
end
