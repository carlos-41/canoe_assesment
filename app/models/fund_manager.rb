class FundManager < ApplicationRecord
  has_many :funds
  belongs_to :company
end
