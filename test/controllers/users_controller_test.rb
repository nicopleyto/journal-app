require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get entries" do
    get users_entries_url
    assert_response :success
  end
end
