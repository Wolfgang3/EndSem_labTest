require 'test_helper'

class AddonmapsControllerTest < ActionController::TestCase
  setup do
    @addonmap = addonmaps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addonmaps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create addonmap" do
    assert_difference('Addonmap.count') do
      post :create, addonmap: { latitude: @addonmap.latitude, longitude: @addonmap.longitude, name: @addonmap.name }
    end

    assert_redirected_to addonmap_path(assigns(:addonmap))
  end

  test "should show addonmap" do
    get :show, id: @addonmap
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @addonmap
    assert_response :success
  end

  test "should update addonmap" do
    patch :update, id: @addonmap, addonmap: { latitude: @addonmap.latitude, longitude: @addonmap.longitude, name: @addonmap.name }
    assert_redirected_to addonmap_path(assigns(:addonmap))
  end

  test "should destroy addonmap" do
    assert_difference('Addonmap.count', -1) do
      delete :destroy, id: @addonmap
    end

    assert_redirected_to addonmaps_path
  end
end
