require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get owner" do
    get users_owner_url
    assert_response :success
  end
end
