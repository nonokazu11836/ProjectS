class Student < ApplicationRecord
  # has_many :picture
  # has_many :detail
  # belongs_to :user , foreign_key: :student_id
  validates :login_id, presence: true
  validates :pass, presence: true
end
