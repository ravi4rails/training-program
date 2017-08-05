require 'test_helper'

class CourseRequestsControllerTest < ActionController::TestCase
  setup do
    @course_request = course_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_request" do
    assert_difference('CourseRequest.count') do
      post :create, course_request: { course_id: @course_request.course_id, requester_contact: @course_request.requester_contact, requester_email: @course_request.requester_email, requester_name: @course_request.requester_name }
    end

    assert_redirected_to course_request_path(assigns(:course_request))
  end

  test "should show course_request" do
    get :show, id: @course_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_request
    assert_response :success
  end

  test "should update course_request" do
    patch :update, id: @course_request, course_request: { course_id: @course_request.course_id, requester_contact: @course_request.requester_contact, requester_email: @course_request.requester_email, requester_name: @course_request.requester_name }
    assert_redirected_to course_request_path(assigns(:course_request))
  end

  test "should destroy course_request" do
    assert_difference('CourseRequest.count', -1) do
      delete :destroy, id: @course_request
    end

    assert_redirected_to course_requests_path
  end
end
