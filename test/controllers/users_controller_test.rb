require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get projects" do
    get users_projects_url
    assert_response :success
  end

end
