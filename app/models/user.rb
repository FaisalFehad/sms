class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Association
  has_many :orders
  has_many :stocks, through: :orders

  # https://stackoverflow.com/questions/6004216/devise-how-do-i-forbid-certain-users-from-signing-in
    def active_for_authentication?
    #remember to call the super
    #then put our own check to determine "active" state using
    #our own "is_active" column
    super and self.is_active?
  end
end
