require 'test_helper'

class ActivitiesControllerTest < ActionController::TestCase
  test "should get index" do
  	sign_in users(:miyamoto)
    get :index
    assert_response :success
  end

end
