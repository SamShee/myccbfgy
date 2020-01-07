require 'test_helper'

class Admin::ChannelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_channel = admin_channels(:one)
  end

  test "should get index" do
    get admin_channels_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_channel_url
    assert_response :success
  end

  test "should create admin_channel" do
    assert_difference('Admin::Channel.count') do
      post admin_channels_url, params: { admin_channel: { created_by: @admin_channel.created_by, name: @admin_channel.name, parent_id: @admin_channel.parent_id, updated_by: @admin_channel.updated_by } }
    end

    assert_redirected_to admin_channel_url(Admin::Channel.last)
  end

  test "should show admin_channel" do
    get admin_channel_url(@admin_channel)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_channel_url(@admin_channel)
    assert_response :success
  end

  test "should update admin_channel" do
    patch admin_channel_url(@admin_channel), params: { admin_channel: { created_by: @admin_channel.created_by, name: @admin_channel.name, parent_id: @admin_channel.parent_id, updated_by: @admin_channel.updated_by } }
    assert_redirected_to admin_channel_url(@admin_channel)
  end

  test "should destroy admin_channel" do
    assert_difference('Admin::Channel.count', -1) do
      delete admin_channel_url(@admin_channel)
    end

    assert_redirected_to admin_channels_url
  end
end
