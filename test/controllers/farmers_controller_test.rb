require 'test_helper'

class FarmersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get farmers_index_url
    assert_response :success
  end

  test "should get new" do
    get farmers_new_url
    assert_response :success
  end

  test "should get edit" do
    get farmers_edit_url
    assert_response :success
  end

  test "should get show" do
    get farmers_show_url
    assert_response :success
  end

end
