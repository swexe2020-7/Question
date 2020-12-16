require 'test_helper'

class ReplysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get replys_index_url
    assert_response :success
  end

  test "should get new" do
    get replys_new_url
    assert_response :success
  end

  test "should get create" do
    get replys_create_url
    assert_response :success
  end

end
