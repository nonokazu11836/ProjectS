class Student < ApplicationRecord
  validates :login_id, presence: true
  validates :pass, presence: true
end
