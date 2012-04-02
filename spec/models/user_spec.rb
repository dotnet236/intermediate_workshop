require 'spec_helper'

describe "user" do
  it "can #follow another user" do
    follower = create(:user)
    followed_user = create(:user)
    follower.follow(followed_user)
    follower.followed_users.should == [followed_user]
  end

  it "knows if it #can_follow? a user" do
    follower = create(:user)
    followed_user = create(:user)
    follower.follow(followed_user)
    unfollowed_user = create(:user)

    follower.can_follow?(follower).should == false
    follower.can_follow?(followed_user).should == false
    follower.can_follow?(unfollowed_user).should == true
  end
end
