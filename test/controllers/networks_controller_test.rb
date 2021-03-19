require 'test_helper'

class NetworksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get networks_index_url
    assert_response :success
  end

  test "should get show" do
    get networks_show_url
    assert_response :success
  end

  test "should get new" do
    get networks_new_url
    assert_response :success
  end

  test "should get edit" do
    get networks_edit_url
    assert_response :success
  end

end
