require 'test_helper'

class Admin::UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_user = admin_users(:one)
  end

  test "should get index" do
    get admin_users_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_user_url
    assert_response :success
  end

  test "should create admin_user" do
    assert_difference('Admin::User.count') do
      post admin_users_url, params: { admin_user: { created_by: @admin_user.created_by, email: @admin_user.email, enabled: @admin_user.enabled, gender: @admin_user.gender, is_enabled: @admin_user.is_enabled, is_expired: @admin_user.is_expired, is_locked: @admin_user.is_locked, mobile: @admin_user.mobile, password: 'secret', password_confirmation: 'secret', real_name: @admin_user.real_name, status: @admin_user.status, type: @admin_user.type, updated_by: @admin_user.updated_by, username: @admin_user.username } }
    end

    assert_redirected_to admin_user_url(Admin::User.last)
  end

  test "should show admin_user" do
    get admin_user_url(@admin_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_user_url(@admin_user)
    assert_response :success
  end

  test "should update admin_user" do
    patch admin_user_url(@admin_user), params: { admin_user: { created_by: @admin_user.created_by, email: @admin_user.email, enabled: @admin_user.enabled, gender: @admin_user.gender, is_enabled: @admin_user.is_enabled, is_expired: @admin_user.is_expired, is_locked: @admin_user.is_locked, mobile: @admin_user.mobile, password: 'secret', password_confirmation: 'secret', real_name: @admin_user.real_name, status: @admin_user.status, type: @admin_user.type, updated_by: @admin_user.updated_by, username: @admin_user.username } }
    assert_redirected_to admin_user_url(@admin_user)
  end

  test "should destroy admin_user" do
    assert_difference('Admin::User.count', -1) do
      delete admin_user_url(@admin_user)
    end

    assert_redirected_to admin_users_url
  end
end
