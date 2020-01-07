require 'test_helper'

class Admin::MenusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_menu = admin_menus(:one)
  end

  test "should get index" do
    get admin_menus_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_menu_url
    assert_response :success
  end

  test "should create admin_menu" do
    assert_difference('Admin::Menu.count') do
      post admin_menus_url, params: { admin_menu: { created_by: @admin_menu.created_by, enabled: @admin_menu.enabled, icon: @admin_menu.icon, icon_location: @admin_menu.icon_location, is_enabled: @admin_menu.is_enabled, is_expired: @admin_menu.is_expired, is_locked: @admin_menu.is_locked, name: @admin_menu.name, parent_id: @admin_menu.parent_id, status: @admin_menu.status, type: @admin_menu.type, updated_by: @admin_menu.updated_by, url: @admin_menu.url } }
    end

    assert_redirected_to admin_menu_url(Admin::Menu.last)
  end

  test "should show admin_menu" do
    get admin_menu_url(@admin_menu)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_menu_url(@admin_menu)
    assert_response :success
  end

  test "should update admin_menu" do
    patch admin_menu_url(@admin_menu), params: { admin_menu: { created_by: @admin_menu.created_by, enabled: @admin_menu.enabled, icon: @admin_menu.icon, icon_location: @admin_menu.icon_location, is_enabled: @admin_menu.is_enabled, is_expired: @admin_menu.is_expired, is_locked: @admin_menu.is_locked, name: @admin_menu.name, parent_id: @admin_menu.parent_id, status: @admin_menu.status, type: @admin_menu.type, updated_by: @admin_menu.updated_by, url: @admin_menu.url } }
    assert_redirected_to admin_menu_url(@admin_menu)
  end

  test "should destroy admin_menu" do
    assert_difference('Admin::Menu.count', -1) do
      delete admin_menu_url(@admin_menu)
    end

    assert_redirected_to admin_menus_url
  end
end
