class Client < ActiveRecord::Base

  before_save :default_status

  validates :name, presence: true
  validates :lastname, presence: true
  validates :phone
  validates :address

  enum status: [:moroso, :aldia, :suspendido, :debaja]

  def default_status
    self.role ||= 1
  end

end
