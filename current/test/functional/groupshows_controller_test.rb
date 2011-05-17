require 'test_helper'

class GroupshowsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groupshows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create groupshow" do
    assert_difference('Groupshow.count') do
      post :create, :groupshow => { }
    end

    assert_redirected_to groupshow_path(assigns(:groupshow))
  end

  test "should show groupshow" do
    get :show, :id => groupshows(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => groupshows(:one).to_param
    assert_response :success
  end

  test "should update groupshow" do
    put :update, :id => groupshows(:one).to_param, :groupshow => { }
    assert_redirected_to groupshow_path(assigns(:groupshow))
  end

  test "should destroy groupshow" do
    assert_difference('Groupshow.count', -1) do
      delete :destroy, :id => groupshows(:one).to_param
    end

    assert_redirected_to groupshows_path
  end
end
