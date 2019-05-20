require 'test_helper'

class GameControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get game_new_url
    assert_response :success
  end

  test "should get score" do
    get game_score_url
    assert_response :success
  end

end
