class Picture < ApplicationRecord
  mount_uploader :place, AvatarUploader  #写真アップ用
    belongs_to :student
    has_one :picture
    has_many :user
    has_one :avatar
    accepts_nested_attributes_for :avatar, allow_destroy: true
    
end
=begin
params = { member: {
  posts_attributes: [{ id: '2', _destroy: '1' }]
}}


member.attributes = params[:member]
member.posts.detect { |p| p.id == 2 }.marked_for_destruction? # => true
member.posts.length # => 2
member.save
member.reload.posts.length # => 1
=end