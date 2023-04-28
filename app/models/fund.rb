class Fund < ApplicationRecord
  belongs_to :fund_manager

  validates :name, :start_year , presence: true, allow_blank: false
end
