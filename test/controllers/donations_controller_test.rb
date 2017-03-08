require 'test_helper'

class DonationsControllerTest < ActionController::TestCase
  setup do
    @donor = donors(:one)
    @donation = donations(:one)
  end

  test "should get index" do
    get :index, params: { donor_id: @donor }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { donor_id: @donor }
    assert_response :success
  end

  test "should create donation" do
    assert_difference('Donation.count') do
      post :create, params: { donor_id: @donor, donation: @donation.attributes }
    end

    assert_redirected_to donor_donation_path(@donor, Donation.last)
  end

  test "should show donation" do
    get :show, params: { donor_id: @donor, id: @donation }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { donor_id: @donor, id: @donation }
    assert_response :success
  end

  test "should update donation" do
    put :update, params: { donor_id: @donor, id: @donation, donation: @donation.attributes }
    assert_redirected_to donor_donation_path(@donor, Donation.last)
  end

  test "should destroy donation" do
    assert_difference('Donation.count', -1) do
      delete :destroy, params: { donor_id: @donor, id: @donation }
    end

    assert_redirected_to donor_donations_path(@donor)
  end
end
