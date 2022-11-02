require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @basic_title="Group Rails Application"
  end

  test "should get team" do
    get static_pages_team_url
    assert_response :success
  end

  test "should get mine" do
    get static_pages_mine_url
    assert_select "title", "About | #{@basic_title}"
    assert_response :success
  end

  test "should get feedback" do 
    get static_pages_feedback_url
    assert_response :success
  end
  
end
