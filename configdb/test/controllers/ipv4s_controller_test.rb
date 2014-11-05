require 'test_helper'

class Ipv4sControllerTest < ActionController::TestCase
  setup do
    @ipv4 = ipv4s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ipv4s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ipv4" do
    assert_difference('Ipv4.count') do
      post :create, ipv4: { address: @ipv4.address, gigabit_ethernet_id: @ipv4.gigabit_ethernet_id, primary: @ipv4.primary }
    end

    assert_redirected_to ipv4_path(assigns(:ipv4))
  end

  test "should show ipv4" do
    get :show, id: @ipv4
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ipv4
    assert_response :success
  end

  test "should update ipv4" do
    patch :update, id: @ipv4, ipv4: { address: @ipv4.address, gigabit_ethernet_id: @ipv4.gigabit_ethernet_id, primary: @ipv4.primary }
    assert_redirected_to ipv4_path(assigns(:ipv4))
  end

  test "should destroy ipv4" do
    assert_difference('Ipv4.count', -1) do
      delete :destroy, id: @ipv4
    end

    assert_redirected_to ipv4s_path
  end
end
