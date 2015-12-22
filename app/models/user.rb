class User < ActiveRecord::Base

  has_many :transfers
  has_many :accounts, through: :transfer


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  validates :lastname, presence: true


  def to_s
    "#{self.name} #{self.lastname}"
  end
end
