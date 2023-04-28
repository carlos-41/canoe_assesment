class FundManager < ApplicationRecord
  has_many :funds, dependent: :delete_all
  belongs_to :company

  validates :name , presence: true, allow_blank: false
  validates :name, uniqueness: true
end
