# Using the belongs_to/has_many association defined, Rails constructs the methods

# Method								Purpose

# micropost.user						Return the User object associated with the micropost.
# user.microposts						Return an array of the user’s microposts.
# user.microposts.create(arg)			Create a micropost (user_id = user.id).
# user.microposts.create!(arg)			Create a micropost (exception on failure).
# user.microposts.build(arg)			Return a new Micropost object (user_id = user.id).

class Micropost < ActiveRecord::Base
  attr_accessible :content
  
  belongs_to :user

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  
  default_scope order: 'microposts.created_at DESC'
end
