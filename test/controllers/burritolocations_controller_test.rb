require 'test_helper'

class BurritolocationsControllerTest < ActionController::TestCase
  setup do
    @burritolocation = burritolocations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:burritolocations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create burritolocation" do
    assert_difference('Burritolocation.count') do
      post :create, burritolocation: { burritolocation_address: @burritolocation.burritolocation_address, burritolocation_description: @burritolocation.burritolocation_description, burritolocation_name: @burritolocation.burritolocation_name }
    end

    assert_redirected_to burritolocation_path(assigns(:burritolocation))
  end

  test "should show burritolocation" do
    get :show, id: @burritolocation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @burritolocation
    assert_response :success
  end

  test "should update burritolocation" do
    patch :update, id: @burritolocation, burritolocation: { burritolocation_address: @burritolocation.burritolocation_address, burritolocation_description: @burritolocation.burritolocation_description, burritolocation_name: @burritolocation.burritolocation_name }
    assert_redirected_to burritolocation_path(assigns(:burritolocation))
  end

  test "should destroy burritolocation" do
    assert_difference('Burritolocation.count', -1) do
      delete :destroy, id: @burritolocation
    end

    assert_redirected_to burritolocations_path
  end
end
