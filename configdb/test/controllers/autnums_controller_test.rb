require 'test_helper'

class AutnumsControllerTest < ActionController::TestCase
  setup do
    @autnum = autnums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:autnums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create autnum" do
    assert_difference('Autnum.count') do
      post :create, autnum: { asn: @autnum.asn, name: @autnum.name }
    end

    assert_redirected_to autnum_path(assigns(:autnum))
  end

  test "should show autnum" do
    get :show, id: @autnum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @autnum
    assert_response :success
  end

  test "should update autnum" do
    patch :update, id: @autnum, autnum: { asn: @autnum.asn, name: @autnum.name }
    assert_redirected_to autnum_path(assigns(:autnum))
  end

  test "should destroy autnum" do
    assert_difference('Autnum.count', -1) do
      delete :destroy, id: @autnum
    end

    assert_redirected_to autnums_path
  end
end
