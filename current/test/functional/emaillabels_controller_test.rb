require 'test_helper'

class EmaillabelsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emaillabels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emaillabel" do
    assert_difference('Emaillabel.count') do
      post :create, :emaillabel => { }
    end

    assert_redirected_to emaillabel_path(assigns(:emaillabel))
  end

  test "should show emaillabel" do
    get :show, :id => emaillabels(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => emaillabels(:one).to_param
    assert_response :success
  end

  test "should update emaillabel" do
    put :update, :id => emaillabels(:one).to_param, :emaillabel => { }
    assert_redirected_to emaillabel_path(assigns(:emaillabel))
  end

  test "should destroy emaillabel" do
    assert_difference('Emaillabel.count', -1) do
      delete :destroy, :id => emaillabels(:one).to_param
    end

    assert_redirected_to emaillabels_path
  end
end
