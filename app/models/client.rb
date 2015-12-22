class Client < ActiveRecord::Base

  before_save :default_role

  validates :name, presence: true
  validates :lastname, presence: true
  validates :phone
  validates :address

  enum status: [:moroso, :aldia, :suspendido, :debaja]

  def default_role
    self.role ||= 1
  end

end
