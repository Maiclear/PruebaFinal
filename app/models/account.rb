class Account < ActiveRecord::Base
  has_many :transfers
  has_many :users, through: :transfer
end
