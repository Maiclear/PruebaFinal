class Client < ActiveRecord::Base

  validates :name, presence: true
  validates :lastname, presence: true
  validates :phone
  validates :address

  enum status: [:moroso, :aldia, :suspendido, :debaja]
end
