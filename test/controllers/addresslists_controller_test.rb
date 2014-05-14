require 'test_helper'

class AddresslistsControllerTest < ActionController::TestCase
  setup do
    @addresslist = addresslists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addresslists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create addresslist" do
    assert_difference('Addresslist.count') do
      post :create, addresslist: { city: @addresslist.city, country: @addresslist.country, phone: @addresslist.phone, state: @addresslist.state, street1: @addresslist.street1, street2: @addresslist.street2 }
    end

    assert_redirected_to addresslist_path(assigns(:addresslist))
  end

  test "should show addresslist" do
    get :show, id: @addresslist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @addresslist
    assert_response :success
  end

  test "should update addresslist" do
    patch :update, id: @addresslist, addresslist: { city: @addresslist.city, country: @addresslist.country, phone: @addresslist.phone, state: @addresslist.state, street1: @addresslist.street1, street2: @addresslist.street2 }
    assert_redirected_to addresslist_path(assigns(:addresslist))
  end

  test "should destroy addresslist" do
    assert_difference('Addresslist.count', -1) do
      delete :destroy, id: @addresslist
    end

    assert_redirected_to addresslists_path
  end
end
