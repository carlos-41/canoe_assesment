class Fund < ApplicationRecord
  belongs_to :fund_manager

  validates :name, :start_year , presence: true, allow_blank: false
  validates :start_year, numericality: { in: 1900..Date.today.year, message: "should be between 1900-#{Date.today.year}" }

  after_create :find_potential_duplicate

  #ToDo this can be extracted to a background worker for a better perfomance
  def find_potential_duplicate
    potential_funds = Fund.where(fund_manager_id: fund_manager_id).where.not(id: id)

    #Check duplicate fund name + fund manager
    duplicated_fund = potential_funds.find_by(name: name)

    if duplicated_fund.nil?
      #Check duplicate aliases + fund manager
      potential_funds.each do |potential_fund|
        if potential_fund.aliases.split(",").include?(name)
          duplicated_fund = potential_fund
          break
        end
      end
    end

    unless duplicated_fund.nil?
      DuplicateFundWarning.create(message: "Duplicated fund", fund_id_1: duplicated_fund.id, fund_id_2: id)
    end
  end
end
