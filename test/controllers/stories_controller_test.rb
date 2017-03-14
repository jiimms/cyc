# require 'test_helper'

# class StoriesControllerTest < ActionController::TestCase
#   setup do
#     @recepients = recepients(:one)
#     @story = stories(:one)
#   end

#   test "should get index" do
#     get :index, params: { recepients_id: @recepients }
#     assert_response :success
#   end

#   test "should get new" do
#     get :new, params: { recepients_id: @recepients }
#     assert_response :success
#   end

#   test "should create story" do
#     assert_difference('Story.count') do
#       post :create, params: { recepients_id: @recepients, story: @story.attributes }
#     end

#     assert_redirected_to recepients_story_path(@recepients, Story.last)
#   end

#   test "should show story" do
#     get :show, params: { recepients_id: @recepients, id: @story }
#     assert_response :success
#   end

#   test "should get edit" do
#     get :edit, params: { recepients_id: @recepients, id: @story }
#     assert_response :success
#   end

#   test "should update story" do
#     put :update, params: { recepients_id: @recepients, id: @story, story: @story.attributes }
#     assert_redirected_to recepients_story_path(@recepients, Story.last)
#   end

#   test "should destroy story" do
#     assert_difference('Story.count', -1) do
#       delete :destroy, params: { recepients_id: @recepients, id: @story }
#     end

#     assert_redirected_to recepients_stories_path(@recepients)
#   end
# end
