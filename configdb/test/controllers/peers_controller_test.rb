require 'test_helper'

class PeersControllerTest < ActionController::TestCase
  setup do
    @peer = peers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:peers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create peer" do
    assert_difference('Peer.count') do
      post :create, peer: { autnum_id: @peer.autnum_id, device_id: @peer.device_id, neighbor: @peer.neighbor }
    end

    assert_redirected_to peer_path(assigns(:peer))
  end

  test "should show peer" do
    get :show, id: @peer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @peer
    assert_response :success
  end

  test "should update peer" do
    patch :update, id: @peer, peer: { autnum_id: @peer.autnum_id, device_id: @peer.device_id, neighbor: @peer.neighbor }
    assert_redirected_to peer_path(assigns(:peer))
  end

  test "should destroy peer" do
    assert_difference('Peer.count', -1) do
      delete :destroy, id: @peer
    end

    assert_redirected_to peers_path
  end
end
