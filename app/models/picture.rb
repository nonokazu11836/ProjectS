class Picture < ApplicationRecord
  mount_uploader :place, AvatarUploader  #写真アップ用
    has_one :avatar
    accepts_nested_attributes_for :avatar, allow_destroy: true
    validates :place, presence: true
    
end