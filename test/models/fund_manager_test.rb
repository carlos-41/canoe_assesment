require "test_helper"

class FundManagerTest < ActiveSupport::TestCase
  def setup
    @company = Company.create(name: "Test company")
  end

  test "should create a fund manager" do
    fund_manager = FundManager.new(company_id: @company.id, name: @company.name)
    
    assert fund_manager.save
    assert_equal fund_manager.name, "Test company"
  end

  test "should not create a fund manager without company" do
    fund_manager = FundManager.new(company_id: nil)

    assert_not fund_manager.save
  end
end
