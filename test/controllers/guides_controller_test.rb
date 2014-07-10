require 'test_helper'

class GuidesControllerTest < ActionController::TestCase
  setup do
    @guide = guides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guide" do
    assert_difference('Guide.count') do
      post :create, guide: { blurb: @guide.blurb, hometown: @guide.hometown, interests: @guide.interests, major: @guide.major, payment_details: @guide.payment_details, payment_id: @guide.payment_id, school_id: @guide.school_id, user_id: @guide.user_id, year: @guide.year }
    end

    assert_redirected_to guide_path(assigns(:guide))
  end

  test "should show guide" do
    get :show, id: @guide
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guide
    assert_response :success
  end

  test "should update guide" do
    patch :update, id: @guide, guide: { blurb: @guide.blurb, hometown: @guide.hometown, interests: @guide.interests, major: @guide.major, payment_details: @guide.payment_details, payment_id: @guide.payment_id, school_id: @guide.school_id, user_id: @guide.user_id, year: @guide.year }
    assert_redirected_to guide_path(assigns(:guide))
  end

  test "should destroy guide" do
    assert_difference('Guide.count', -1) do
      delete :destroy, id: @guide
    end

    assert_redirected_to guides_path
  end
end
