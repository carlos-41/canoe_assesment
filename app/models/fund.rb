class Fund < ApplicationRecord
  belongs_to :fund_manager

  validates :name, :start_year , presence: true, allow_blank: false
  validates :start_year, numericality: { in: 1900..Date.today.year, message: "should be between 1900-#{Date.today.year}" }
end
