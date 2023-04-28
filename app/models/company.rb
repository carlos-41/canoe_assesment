class Company < ApplicationRecord
  has_many :fund_managers

  validates :name, presence: true, allow_blank: false
  validates :name, uniqueness: true
end
