class FollowingRelationshipsController < ApplicationController
  def create
    followed_user = User.find(params[:user_id])
  end
end
