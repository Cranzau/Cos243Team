require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get team" do
    get static_pages_team_url
    assert_response :success
  end

  test "should get mine" do
    get static_pages_mine_url
    assert_response :success
  end
end
