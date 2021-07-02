class Student < ApplicationRecord
  has_many :picture
  has_many :detail
  validates :login_id, presence: true
  validates :pass, presence: true
end
