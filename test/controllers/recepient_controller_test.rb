require 'test_helper'

class RecepientControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get recepient_dashboard_url
    assert_response :success
  end

end
