class User < ActiveRecord::Base
  include Clearance::User
  has_many :shouts
  has_many :following_relationships, foreign_key: :follower_id
  has_many :followed_users, through: :following_relationships

  def current_shouts
    shouts.current
  end

  def follow(followed_user)
    followed_users << followed_user
  end

  def can_follow?(followed_user)
    followed_users.includes? followed_user && followed_user != email
  end
end
