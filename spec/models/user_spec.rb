require 'spec_helper'

describe "user" do
  it "can .follow another user" do
    follower = create(:user)
    followed_user = create(:user)
    follower.follow(followed_user)
    follower.followed_users.should == [followed_user]
  end
end
