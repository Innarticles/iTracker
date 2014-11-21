require 'test_helper'

class SalesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new_order" do
    get :new_order
    assert_response :success
  end

end
