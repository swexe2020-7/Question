class LikesController < ApplicationController
  def create
        tweet = Home.find(params[:tweet_id])
        user = User.find_by(uid: session[:login_uid])
        user.like_tweets << tweet
        redirect_to root_path
  end
    
    def destroy
        home = Home.find(params[:id])
        user = User.find_by(uid: session[:login_uid])
        home.likes.find_by(user_id: user.id).destroy
        redirect_to root_path
    end
end
