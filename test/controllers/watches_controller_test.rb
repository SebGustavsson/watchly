require 'test_helper'

class WatchesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get watches_new_url
    assert_response :success
  end

  test "should get create" do
    get watches_create_url
    assert_response :success
  end
end
