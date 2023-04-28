require "test_helper"

class FundManagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fund_manager = fund_managers(:one)
  end

  test "should get index" do
    get fund_managers_url
    assert_response :success
  end

  test "should get new" do
    get new_fund_manager_url
    assert_response :success
  end

  test "should create fund_manager" do
    assert_difference("FundManager.count") do
      post fund_managers_url, params: { fund_manager: { name: @fund_manager.name } }
    end

    assert_redirected_to fund_manager_url(FundManager.last)
  end

  test "should show fund_manager" do
    get fund_manager_url(@fund_manager)
    assert_response :success
  end

  test "should get edit" do
    get edit_fund_manager_url(@fund_manager)
    assert_response :success
  end

  test "should update fund_manager" do
    patch fund_manager_url(@fund_manager), params: { fund_manager: { name: @fund_manager.name } }
    assert_redirected_to fund_manager_url(@fund_manager)
  end

  test "should destroy fund_manager" do
    assert_difference("FundManager.count", -1) do
      delete fund_manager_url(@fund_manager)
    end

    assert_redirected_to fund_managers_url
  end
end
