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
<<<<<<< HEAD
      flash[:info] = "ユーザを登録しました"
=======
      flash[:info] = "ユーザーを登録しました"
>>>>>>> 55cad86ef181f7731cfda939ffb93d5c4808eae8
      redirect_to users_path
    else
      @user.pass = ""
      render :new
    end
<<<<<<< HEAD
  end
  
  def destroy
    user = User.find(params[:id])
    user.destroy
    flash[:info] = "ユーザを削除しました"
    redirect_to users_path
=======
>>>>>>> 55cad86ef181f7731cfda939ffb93d5c4808eae8
  end
end
