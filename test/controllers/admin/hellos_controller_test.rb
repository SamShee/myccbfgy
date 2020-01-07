require 'test_helper'

class Admin::HellosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_hello = admin_hellos(:one)
  end

  test "should get index" do
    get admin_hellos_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_hello_url
    assert_response :success
  end

  test "should create admin_hello" do
    assert_difference('Admin::Hello.count') do
      post admin_hellos_url, params: { admin_hello: { name: @admin_hello.name } }
    end

    assert_redirected_to admin_hello_url(Admin::Hello.last)
  end

  test "should show admin_hello" do
    get admin_hello_url(@admin_hello)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_hello_url(@admin_hello)
    assert_response :success
  end

  test "should update admin_hello" do
    patch admin_hello_url(@admin_hello), params: { admin_hello: { name: @admin_hello.name } }
    assert_redirected_to admin_hello_url(@admin_hello)
  end

  test "should destroy admin_hello" do
    assert_difference('Admin::Hello.count', -1) do
      delete admin_hello_url(@admin_hello)
    end

    assert_redirected_to admin_hellos_url
  end
end
