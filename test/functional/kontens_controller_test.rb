require 'test_helper'

class KontensControllerTest < ActionController::TestCase
  setup do
    @konten = kontens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kontens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create konten" do
    assert_difference('Konten.count') do
      post :create, konten: { deskripsi: @konten.deskripsi, namawisata: @konten.namawisata, tempat: @konten.tempat }
    end

    assert_redirected_to konten_path(assigns(:konten))
  end

  test "should show konten" do
    get :show, id: @konten
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @konten
    assert_response :success
  end

  test "should update konten" do
    put :update, id: @konten, konten: { deskripsi: @konten.deskripsi, namawisata: @konten.namawisata, tempat: @konten.tempat }
    assert_redirected_to konten_path(assigns(:konten))
  end

  test "should destroy konten" do
    assert_difference('Konten.count', -1) do
      delete :destroy, id: @konten
    end

    assert_redirected_to kontens_path
  end
end
