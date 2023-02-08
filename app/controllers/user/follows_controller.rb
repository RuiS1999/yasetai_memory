class User::FollowsController < ApplicationController
  # フォローするとき
  def create
    following = current_user.follows.create(follower_id: params[:user_id])
    following.save
    redirect_to request.referrer || root_path
  end
  # フォロー外すとき
  def destroy
    following = current_user.follows.find_by(follower_id: params[:user_id])
    following.destroy
    redirect_to request.referrer || root_path
  end
end
