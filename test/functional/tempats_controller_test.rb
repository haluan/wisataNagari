require 'test_helper'

class TempatsControllerTest < ActionController::TestCase
  setup do
    @tempat = tempats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tempats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tempat" do
    assert_difference('Tempat.count') do
      post :create, tempat: { deskripsitempat: @tempat.deskripsitempat, namamatempat: @tempat.namamatempat }
    end

    assert_redirected_to tempat_path(assigns(:tempat))
  end

  test "should show tempat" do
    get :show, id: @tempat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tempat
    assert_response :success
  end

  test "should update tempat" do
    put :update, id: @tempat, tempat: { deskripsitempat: @tempat.deskripsitempat, namamatempat: @tempat.namamatempat }
    assert_redirected_to tempat_path(assigns(:tempat))
  end

  test "should destroy tempat" do
    assert_difference('Tempat.count', -1) do
      delete :destroy, id: @tempat
    end

    assert_redirected_to tempats_path
  end
end
