require 'test_helper'

class Admin::NewslettersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_newsletters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newsletter" do
    assert_difference('Admin::Newsletter.count') do
      post :create, :newsletter => { }
    end

    assert_redirected_to newsletter_path(assigns(:newsletter))
  end

  test "should show newsletter" do
    get :show, :id => admin_newsletters(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => admin_newsletters(:one).to_param
    assert_response :success
  end

  test "should update newsletter" do
    put :update, :id => admin_newsletters(:one).to_param, :newsletter => { }
    assert_redirected_to newsletter_path(assigns(:newsletter))
  end

  test "should destroy newsletter" do
    assert_difference('Admin::Newsletter.count', -1) do
      delete :destroy, :id => admin_newsletters(:one).to_param
    end

    assert_redirected_to admin_newsletters_path
  end
end
