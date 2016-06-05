require 'test_helper'

class BudgetsControllerTest < ActionController::TestCase
  test "should get show_budget" do
    get :show_budget
    assert_response :success
  end

end
