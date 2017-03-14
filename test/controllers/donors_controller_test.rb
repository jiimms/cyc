# require 'test_helper'

# class DonorsControllerTest < ActionDispatch::IntegrationTest
#   setup do
#     @donor = donors(:one)
#   end

#   test "should get index" do
#     get donors_url
#     assert_response :success
#   end

#   test "should get new" do
#     get new_donor_url
#     assert_response :success
#   end

#   test "should create donor" do
#     assert_difference('Donor.count') do
#       post donors_url, params: { donor: { about_info: @donor.about_info, country_of_origin: @donor.country_of_origin, home_address: @donor.home_address, reason_to_help: @donor.reason_to_help } }
#     end

#     assert_redirected_to donor_url(Donor.last)
#   end

#   test "should show donor" do
#     get donor_url(@donor)
#     assert_response :success
#   end

#   test "should get edit" do
#     get edit_donor_url(@donor)
#     assert_response :success
#   end

#   test "should update donor" do
#     patch donor_url(@donor), params: { donor: { about_info: @donor.about_info, country_of_origin: @donor.country_of_origin, home_address: @donor.home_address, reason_to_help: @donor.reason_to_help } }
#     assert_redirected_to donor_url(@donor)
#   end

#   test "should destroy donor" do
#     assert_difference('Donor.count', -1) do
#       delete donor_url(@donor)
#     end

#     assert_redirected_to donors_url
#   end
# end
