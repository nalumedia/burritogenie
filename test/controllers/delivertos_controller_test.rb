require 'test_helper'

class DelivertosControllerTest < ActionController::TestCase
  setup do
    @deliverto = delivertos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:delivertos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deliverto" do
    assert_difference('Deliverto.count') do
      post :create, deliverto: { deliverto_instructions: @deliverto.deliverto_instructions, deliverto_phone: @deliverto.deliverto_phone, deliverto_street: @deliverto.deliverto_street, deliverto_zip: @deliverto.deliverto_zip }
    end

    assert_redirected_to deliverto_path(assigns(:deliverto))
  end

  test "should show deliverto" do
    get :show, id: @deliverto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deliverto
    assert_response :success
  end

  test "should update deliverto" do
    patch :update, id: @deliverto, deliverto: { deliverto_instructions: @deliverto.deliverto_instructions, deliverto_phone: @deliverto.deliverto_phone, deliverto_street: @deliverto.deliverto_street, deliverto_zip: @deliverto.deliverto_zip }
    assert_redirected_to deliverto_path(assigns(:deliverto))
  end

  test "should destroy deliverto" do
    assert_difference('Deliverto.count', -1) do
      delete :destroy, id: @deliverto
    end

    assert_redirected_to delivertos_path
  end
end
