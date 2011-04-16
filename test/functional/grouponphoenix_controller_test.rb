require 'test_helper'

class GrouponphoenixControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
