require "test_helper"

class SpeedTestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get speed_test_index_url
    assert_response :success
  end
end
