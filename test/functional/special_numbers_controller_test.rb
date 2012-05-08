require 'test_helper'

class SpecialNumbersControllerTest < ActionController::TestCase
  setup do
    @special_number = special_numbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:special_numbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create special_number" do
    assert_difference('SpecialNumber.count') do
      post :create, special_number: { special: @special_number.special }
    end

    assert_redirected_to special_number_path(assigns(:special_number))
  end

  test "should show special_number" do
    get :show, id: @special_number
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @special_number
    assert_response :success
  end

  test "should update special_number" do
    put :update, id: @special_number, special_number: { special: @special_number.special }
    assert_redirected_to special_number_path(assigns(:special_number))
  end

  test "should destroy special_number" do
    assert_difference('SpecialNumber.count', -1) do
      delete :destroy, id: @special_number
    end

    assert_redirected_to special_numbers_path
  end
end
