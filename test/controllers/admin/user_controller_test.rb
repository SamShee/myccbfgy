require 'test_helper'

class Admin::UserControllerTest < ActionDispatch::IntegrationTest
  test "should get username:string" do
    get admin_user_username:string_url
    assert_response :success
  end

  test "should get password:digest" do
    get admin_user_password:digest_url
    assert_response :success
  end

  test "should get created_by:string" do
    get admin_user_created_by:string_url
    assert_response :success
  end

  test "should get updated_by:string" do
    get admin_user_updated_by:string_url
    assert_response :success
  end

end
