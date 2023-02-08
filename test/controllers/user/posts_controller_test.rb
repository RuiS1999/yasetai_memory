require "test_helper"

class User::PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_posts_index_url
    assert_response :success
  end

  test "should get show" do
    get user_posts_show_url
    assert_response :success
  end
end
