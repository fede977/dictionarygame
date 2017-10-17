require 'test_helper'

class GameControllerTest < ActionDispatch::IntegrationTest
  test "should get guessing_game" do
    get game_guessing_game_url
    assert_response :success
  end

end
