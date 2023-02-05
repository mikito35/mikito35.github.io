require "test_helper"

class IllustControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get illust_index_url
    assert_response :success
  end
end
