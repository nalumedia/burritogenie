require 'test_helper'

class DelivertostatusesControllerTest < ActionController::TestCase
  setup do
    @delivertostatus = delivertostatuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:delivertostatuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create delivertostatus" do
    assert_difference('Delivertostatus.count') do
      post :create, delivertostatus: { delivertostatus_name: @delivertostatus.delivertostatus_name, deliverttostatus_definition: @delivertostatus.deliverttostatus_definition }
    end

    assert_redirected_to delivertostatus_path(assigns(:delivertostatus))
  end

  test "should show delivertostatus" do
    get :show, id: @delivertostatus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @delivertostatus
    assert_response :success
  end

  test "should update delivertostatus" do
    patch :update, id: @delivertostatus, delivertostatus: { delivertostatus_name: @delivertostatus.delivertostatus_name, deliverttostatus_definition: @delivertostatus.deliverttostatus_definition }
    assert_redirected_to delivertostatus_path(assigns(:delivertostatus))
  end

  test "should destroy delivertostatus" do
    assert_difference('Delivertostatus.count', -1) do
      delete :destroy, id: @delivertostatus
    end

    assert_redirected_to delivertostatuses_path
  end
end
