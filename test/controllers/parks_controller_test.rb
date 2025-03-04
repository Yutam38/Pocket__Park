require "test_helper"

class ParksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get parks_index_url
    assert_response :success
  end

  test "should get new" do
    get parks_new_url
    assert_response :success
  end

  test "should get create" do
    get parks_create_url
    assert_response :success
  end
end
