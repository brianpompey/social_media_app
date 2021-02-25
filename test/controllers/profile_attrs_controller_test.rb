require 'test_helper'

class ProfileAttrsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get profile_attrs_new_url
    assert_response :success
  end

  test "should get create" do
    get profile_attrs_create_url
    assert_response :success
  end

  test "should get edit" do
    get profile_attrs_edit_url
    assert_response :success
  end

  test "should get update" do
    get profile_attrs_update_url
    assert_response :success
  end

end
