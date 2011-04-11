require 'test_helper'

class FrommailsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:frommails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create frommail" do
    assert_difference('Frommail.count') do
      post :create, :frommail => { }
    end

    assert_redirected_to frommail_path(assigns(:frommail))
  end

  test "should show frommail" do
    get :show, :id => frommails(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => frommails(:one).to_param
    assert_response :success
  end

  test "should update frommail" do
    put :update, :id => frommails(:one).to_param, :frommail => { }
    assert_redirected_to frommail_path(assigns(:frommail))
  end

  test "should destroy frommail" do
    assert_difference('Frommail.count', -1) do
      delete :destroy, :id => frommails(:one).to_param
    end

    assert_redirected_to frommails_path
  end
end
