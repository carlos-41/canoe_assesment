require "test_helper"

class DuplicateFundWarningTest < ActiveSupport::TestCase
  test "should create a duplicate fund warning " do
    duplicate_fund_warning = DuplicateFundWarning.new(message: "Test warning", fund_id_1: 1, fund_id_2: 2)

    assert duplicate_fund_warning.save
  end
end
