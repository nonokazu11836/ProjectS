class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :student
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  ####
  def email_required?
    false
  end
end
