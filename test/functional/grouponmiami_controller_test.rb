require 'test_helper'

class GrouponmiamiControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
