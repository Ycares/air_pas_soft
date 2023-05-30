require "test_helper"

class WeaponsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get weapons_index_url
    assert_response :success
  end

  test "should get show" do
    get weapons_show_url
    assert_response :success
  end

  test "should get edit" do
    get weapons_edit_url
    assert_response :success
  end

  test "should get update" do
    get weapons_update_url
    assert_response :success
  end
end
