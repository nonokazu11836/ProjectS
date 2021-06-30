class Picture < ApplicationRecord
    has_one :avatar
    accepts_nested_attributes_for :avatar, allow_destroy: true
    
end
params = { member: {
  posts_attributes: [{ id: '2', _destroy: '1' }]
}}

=begin
member.attributes = params[:member]
member.posts.detect { |p| p.id == 2 }.marked_for_destruction? # => true
member.posts.length # => 2
member.save
member.reload.posts.length # => 1
=end