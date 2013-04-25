require 'test_helper'

class MakanansControllerTest < ActionController::TestCase
  setup do
    @makanan = makanans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:makanans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create makanan" do
    assert_difference('Makanan.count') do
      post :create, makanan: { deskripsimakanan: @makanan.deskripsimakanan, namamakanan: @makanan.namamakanan }
    end

    assert_redirected_to makanan_path(assigns(:makanan))
  end

  test "should show makanan" do
    get :show, id: @makanan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @makanan
    assert_response :success
  end

  test "should update makanan" do
    put :update, id: @makanan, makanan: { deskripsimakanan: @makanan.deskripsimakanan, namamakanan: @makanan.namamakanan }
    assert_redirected_to makanan_path(assigns(:makanan))
  end

  test "should destroy makanan" do
    assert_difference('Makanan.count', -1) do
      delete :destroy, id: @makanan
    end

    assert_redirected_to makanans_path
  end
end
