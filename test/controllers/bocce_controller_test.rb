require 'test_helper'

class BocceControllerTest < ActionDispatch::IntegrationTest
  test "should get standings" do
    get bocce_standings_url
    assert_response :success
  end

end
