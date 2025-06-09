require "application_system_test_case"

class TopicsTest < ApplicationSystemTestCase
  setup do
    @topic = topics(:one)
  end

  test "visiting the index" do
    visit topics_url
    assert_selector "h1", text: "Topics"
  end

  test "should create topic" do
    visit topics_url
    click_on "New topic"

    check "Completed" if @topic.completed
    fill_in "Completed at", with: @topic.completed_at
    fill_in "Estimatio", with: @topic.estimatio
    fill_in "Skill set", with: @topic.skill_set
    fill_in "Theme", with: @topic.theme
    fill_in "Topic", with: @topic.topic
    fill_in "User", with: @topic.user_id
    fill_in "Xp", with: @topic.xp
    click_on "Create Topic"

    assert_text "Topic was successfully created"
    click_on "Back"
  end

  test "should update Topic" do
    visit topic_url(@topic)
    click_on "Edit this topic", match: :first

    check "Completed" if @topic.completed
    fill_in "Completed at", with: @topic.completed_at.to_s
    fill_in "Estimatio", with: @topic.estimatio
    fill_in "Skill set", with: @topic.skill_set
    fill_in "Theme", with: @topic.theme
    fill_in "Topic", with: @topic.topic
    fill_in "User", with: @topic.user_id
    fill_in "Xp", with: @topic.xp
    click_on "Update Topic"

    assert_text "Topic was successfully updated"
    click_on "Back"
  end

  test "should destroy Topic" do
    visit topic_url(@topic)
    click_on "Destroy this topic", match: :first

    assert_text "Topic was successfully destroyed"
  end
end
