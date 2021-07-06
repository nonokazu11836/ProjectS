class Picture < ApplicationRecord
  mount_uploader :place, AvatarUploader  #写真アップ用
    belongs_to :student
    has_one :picture
    has_many :user
    has_one :avatar
    accepts_nested_attributes_for :avatar, allow_destroy: true
    
end