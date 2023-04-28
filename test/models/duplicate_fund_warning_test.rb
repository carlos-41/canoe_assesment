require "test_helper"

class DuplicateFundWarningTest < ActiveSupport::TestCase
  def setup
    @company = Company.create(name: "Test company")
    @fund_manager = FundManager.create(company_id: @company.id, name: @company.name)
    @fund = Fund.create(fund_manager_id: @fund_manager.id, name: "Fund 1", start_year: "2010", aliases: "Fund One")
  end

  test "should create a duplicate fund warning " do
    duplicate_fund_warning = DuplicateFundWarning.new(message: "Test warning", fund_id_1: 1, fund_id_2: 2)

    assert duplicate_fund_warning.save
  end

  test "should create a duplicate fund warning due same fund manager and name" do
    duplicated_fund = Fund.new(fund_manager_id: @fund_manager.id, name: "Fund 1", start_year: "2019")
    duplicated_fund.save

    assert DuplicateFundWarning.find_by(fund_id_1: @fund.id)
  end

  test "should create a duplicate fund warning due same fund manager and alias" do
    duplicated_fund = Fund.new(fund_manager_id: @fund_manager.id, name: "Fund One", start_year: "2009")
    duplicated_fund.save

    assert DuplicateFundWarning.find_by(fund_id_2: duplicated_fund.id)
  end
end
