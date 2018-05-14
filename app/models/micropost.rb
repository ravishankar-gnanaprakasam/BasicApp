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


  def self.from_users_followed_by(user)
    #followed_user_ids = user.followed_user_ids
    # where("user_id IN (?) OR user_id = ?", followed_user_ids, user)
    #sub select query for the above code
    followed_user_ids = "SELECT followed_id FROM relationships
                         WHERE follower_id = :user_id"
    where("user_id IN (#{followed_user_ids}) OR user_id = :user_id",
          user_id: user.id)
  end

end
