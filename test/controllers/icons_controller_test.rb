require 'test_helper'

class IconsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get icons_index_url
    assert_response :success
  end

  test "should get show" do
    get icons_show_url
    assert_response :success
  end

  test "should get new" do
    get icons_new_url
    assert_response :success
  end

  test "should get create" do
    get icons_create_url
    assert_response :success
  end

end
