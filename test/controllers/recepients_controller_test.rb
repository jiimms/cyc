# require 'test_helper'

# class RecepientsControllerTest < ActionDispatch::IntegrationTest
#   setup do
#     @recepient = recepients(:one)
#   end

#   test "should get index" do
#     get recepients_url
#     assert_response :success
#   end

#   test "should get new" do
#     get new_recepient_url
#     assert_response :success
#   end

#   test "should create recepient" do
#     assert_difference('Recepient.count') do
#       post recepients_url, params: { recepient: { about_info: @recepient.about_info, country_of_origin: @recepient.country_of_origin, home_address: @recepient.home_address, need_amount: @recepient.need_amount, reason_for_need: @recepient.reason_for_need } }
#     end

#     assert_redirected_to recepient_url(Recepient.last)
#   end

#   test "should show recepient" do
#     get recepient_url(@recepient)
#     assert_response :success
#   end

#   test "should get edit" do
#     get edit_recepient_url(@recepient)
#     assert_response :success
#   end

#   test "should update recepient" do
#     patch recepient_url(@recepient), params: { recepient: { about_info: @recepient.about_info, country_of_origin: @recepient.country_of_origin, home_address: @recepient.home_address, need_amount: @recepient.need_amount, reason_for_need: @recepient.reason_for_need } }
#     assert_redirected_to recepient_url(@recepient)
#   end

#   test "should destroy recepient" do
#     assert_difference('Recepient.count', -1) do
#       delete recepient_url(@recepient)
#     end

#     assert_redirected_to recepients_url
#   end
# end
