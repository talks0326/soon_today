require 'test_helper'

class SwipeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get swipe_index_url
    assert_response :success
  end

end
