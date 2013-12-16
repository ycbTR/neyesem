require 'test_helper'

class MekansControllerTest < ActionController::TestCase
  setup do
    @mekan = mekans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mekans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mekan" do
    assert_difference('Mekan.count') do
      post :create, mekan: { isim: @mekan.isim }
    end

    assert_redirected_to mekan_path(assigns(:mekan))
  end

  test "should show mekan" do
    get :show, id: @mekan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mekan
    assert_response :success
  end

  test "should update mekan" do
    put :update, id: @mekan, mekan: { isim: @mekan.isim }
    assert_redirected_to mekan_path(assigns(:mekan))
  end

  test "should destroy mekan" do
    assert_difference('Mekan.count', -1) do
      delete :destroy, id: @mekan
    end

    assert_redirected_to mekans_path
  end
end
