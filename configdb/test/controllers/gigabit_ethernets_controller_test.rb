require 'test_helper'

class GigabitEthernetsControllerTest < ActionController::TestCase
  setup do
    @gigabit_ethernet = gigabit_ethernets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gigabit_ethernets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gigabit_ethernet" do
    assert_difference('GigabitEthernet.count') do
      post :create, gigabit_ethernet: { description: @gigabit_ethernet.description, device_id: @gigabit_ethernet.device_id, name: @gigabit_ethernet.name, speed: @gigabit_ethernet.speed }
    end

    assert_redirected_to gigabit_ethernet_path(assigns(:gigabit_ethernet))
  end

  test "should show gigabit_ethernet" do
    get :show, id: @gigabit_ethernet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gigabit_ethernet
    assert_response :success
  end

  test "should update gigabit_ethernet" do
    patch :update, id: @gigabit_ethernet, gigabit_ethernet: { description: @gigabit_ethernet.description, device_id: @gigabit_ethernet.device_id, name: @gigabit_ethernet.name, speed: @gigabit_ethernet.speed }
    assert_redirected_to gigabit_ethernet_path(assigns(:gigabit_ethernet))
  end

  test "should destroy gigabit_ethernet" do
    assert_difference('GigabitEthernet.count', -1) do
      delete :destroy, id: @gigabit_ethernet
    end

    assert_redirected_to gigabit_ethernets_path
  end
end
