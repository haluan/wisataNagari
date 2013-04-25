require 'test_helper'

class BudayasControllerTest < ActionController::TestCase
  setup do
    @budaya = budayas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:budayas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create budaya" do
    assert_difference('Budaya.count') do
      post :create, budaya: { deskripsibudaya: @budaya.deskripsibudaya, namabudaya: @budaya.namabudaya }
    end

    assert_redirected_to budaya_path(assigns(:budaya))
  end

  test "should show budaya" do
    get :show, id: @budaya
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @budaya
    assert_response :success
  end

  test "should update budaya" do
    put :update, id: @budaya, budaya: { deskripsibudaya: @budaya.deskripsibudaya, namabudaya: @budaya.namabudaya }
    assert_redirected_to budaya_path(assigns(:budaya))
  end

  test "should destroy budaya" do
    assert_difference('Budaya.count', -1) do
      delete :destroy, id: @budaya
    end

    assert_redirected_to budayas_path
  end
end
