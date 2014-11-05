require 'test_helper'

class Ipv6sControllerTest < ActionController::TestCase
  setup do
    @ipv6 = ipv6s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ipv6s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ipv6" do
    assert_difference('Ipv6.count') do
      post :create, ipv6: { address: @ipv6.address, gigabit_ethernet_id: @ipv6.gigabit_ethernet_id, primary: @ipv6.primary }
    end

    assert_redirected_to ipv6_path(assigns(:ipv6))
  end

  test "should show ipv6" do
    get :show, id: @ipv6
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ipv6
    assert_response :success
  end

  test "should update ipv6" do
    patch :update, id: @ipv6, ipv6: { address: @ipv6.address, gigabit_ethernet_id: @ipv6.gigabit_ethernet_id, primary: @ipv6.primary }
    assert_redirected_to ipv6_path(assigns(:ipv6))
  end

  test "should destroy ipv6" do
    assert_difference('Ipv6.count', -1) do
      delete :destroy, id: @ipv6
    end

    assert_redirected_to ipv6s_path
  end
end
