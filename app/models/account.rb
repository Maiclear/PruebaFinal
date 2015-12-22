class Account < ActiveRecord::Base
  has_many :transfers
  has_many :users, through: :transfer

  validates :descrition, presence: true
  validates :amount, presence: true
  validates :client, presence: true
  validates :balance, presence: true
end
