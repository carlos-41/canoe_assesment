require "test_helper"

class FundTest < ActiveSupport::TestCase
  def setup
    @company = Company.create(name: "Test company")
    @fund_manager = FundManager.create(company_id: @company.id, name: @company.name)
  end

  test "should create a fund" do
    fund = Fund.new(fund_manager_id: @fund_manager.id, name: "Fund 1", start_year: "2010", aliases: "Fund One")
    
    assert fund.save
  end

  test "should not create a fund without fund manager" do
    fund = Fund.new(fund_manager_id: nil)

    assert_not fund.save
  end

  test "should not create a fund without start_year" do
    fund = Fund.new(fund_manager_id: @fund_manager.id, name: "Fund 1", aliases: "Fund One")

    assert_not fund.save
  end

  test "should create a fund with a valid start_year" do
    fund = Fund.new(fund_manager_id: @fund_manager.id, start_year: "2010", name: "Fund 1", aliases: "Fund One")

    assert fund.save
  end

  test "should not create a fund without a valid start_year" do
    fund = Fund.new(fund_manager_id: @fund_manager.id, start_year: "1", name: "Fund 1", aliases: "Fund One")

    assert_not fund.save
  end
end
