require 'test_helper'

class BlogPostsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get allposts" do
    get :allposts
    assert_response :success
  end

end
