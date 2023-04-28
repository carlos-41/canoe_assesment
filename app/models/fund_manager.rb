class FundManager < ApplicationRecord
  has_many :funds
  belongs_to :company

  validates :name , presence: true, allow_blank: false
  validates :name, uniqueness: true
end
