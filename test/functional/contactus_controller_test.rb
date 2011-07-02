require 'test_helper'

class ContactusControllerTest < ActionController::TestCase
  setup do
    @contactu = contactus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contactus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contactu" do
    assert_difference('Contactu.count') do
      post :create, :contactu => @contactu.attributes
    end

    assert_redirected_to contactu_path(assigns(:contactu))
  end

  test "should show contactu" do
    get :show, :id => @contactu.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @contactu.to_param
    assert_response :success
  end

  test "should update contactu" do
    put :update, :id => @contactu.to_param, :contactu => @contactu.attributes
    assert_redirected_to contactu_path(assigns(:contactu))
  end

  test "should destroy contactu" do
    assert_difference('Contactu.count', -1) do
      delete :destroy, :id => @contactu.to_param
    end

    assert_redirected_to contactus_path
  end
end
