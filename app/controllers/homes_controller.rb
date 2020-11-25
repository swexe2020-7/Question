class HomesController < ApplicationController
 def index
    @homes = Home.all
 end

  def new
    @home = Home.new
  end
  
  def create
    user = User.find_by(uid: session[:login_uid])
    @home = Home.new(message: params[:home][:message], user_id:user.id, tdate: Time.current)
    if @home.save
      flash[:info] = "投稿完了"
      redirect_to homes_path
    else
      render :new
    end
  end

  def destroy
    home = Home.find(params[:id])
    home.destroy
    flash[:info] = "投稿削除"
    redirect_to homes_path
  end
end
