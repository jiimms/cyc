require 'test_helper'

class WarwidowsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get warwidows_index_url
    assert_response :success
  end

  test "should get new" do
    get warwidows_new_url
    assert_response :success
  end

  test "should get edit" do
    get warwidows_edit_url
    assert_response :success
  end

  test "should get show" do
    get warwidows_show_url
    assert_response :success
  end

end
