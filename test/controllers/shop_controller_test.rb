require 'test_helper'

class ShopControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get category" do
    get :category
    assert_response :success
  end

  test "should get product" do
    get :product
    assert_response :success
  end

  test "should get admin" do
    get :admin
    assert_response :success
  end

end
