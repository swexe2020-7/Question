class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  
  def create
    p = BCrypt::Password.create(params[:user][:pass])
    @user = User.new(uid: params[:user][:uid], pass: p)
    if @user.save
      flash[:info] = "ユーザーを登録しました"
      redirect_to users_path
    else
      @user.pass = ""
      render :new
    end
  end
end
