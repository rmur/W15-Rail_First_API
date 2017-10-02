require 'test_helper'

class AddOtherShowDetailsControllerTest < ActionController::TestCase
  setup do
    @add_other_show_detail = add_other_show_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_other_show_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_other_show_detail" do
    assert_difference('AddOtherShowDetail.count') do
      post :create, add_other_show_detail: { description: @add_other_show_detail.description, image: @add_other_show_detail.image, series: @add_other_show_detail.series, title: @add_other_show_detail.title }
    end

    assert_redirected_to add_other_show_detail_path(assigns(:add_other_show_detail))
  end

  test "should show add_other_show_detail" do
    get :show, id: @add_other_show_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_other_show_detail
    assert_response :success
  end

  test "should update add_other_show_detail" do
    patch :update, id: @add_other_show_detail, add_other_show_detail: { description: @add_other_show_detail.description, image: @add_other_show_detail.image, series: @add_other_show_detail.series, title: @add_other_show_detail.title }
    assert_redirected_to add_other_show_detail_path(assigns(:add_other_show_detail))
  end

  test "should destroy add_other_show_detail" do
    assert_difference('AddOtherShowDetail.count', -1) do
      delete :destroy, id: @add_other_show_detail
    end

    assert_redirected_to add_other_show_details_path
  end
end
