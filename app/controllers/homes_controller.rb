class HomesController < ApplicationController
 def index
    @homes = Home.all
 end

  def new
    @home = Home.new
  end
  
  def create
    user = User.find_by(uid: session[:login_uid])
    @home = Home.new(message: params[:tweet][:message], user_id:user.id)
    if @home.save
      flash[:info] = "ツイートを追加しました"
      redirect_to tweets_path
    else
      render :new
    end
  end

  def destroy
    home = Home.find(params[:id])
    home.destroy
    flash[:info] = "ツイートを削除しました"
    redirect_to homes_path
  end
end
