require "test_helper"

class CompanyTest < ActiveSupport::TestCase
  test "should create a company" do
    company = Company.new(name: "Test company")

    assert company.save
  end

  test "should not create a company without name" do
    company = Company.new

    assert_not company.save
  end

  test "should not create a company that already exists" do
    company = Company.new(name: "Test company")
    company.save

    other_company = Company.new(name: "Test company")

    assert_not other_company.save
  end
end
