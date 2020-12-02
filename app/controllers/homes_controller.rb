class HomesController < ApplicationController
 def index
    @homes = Home.all
 end

  def new
    @home = Home.new
  end
  
  def create
        @home = Home.new(message: params[:home][:message], tdate: Time.current)
        if @home.save
            flash[:notice] = '1レコード追加しました。'
            redirect_to '/' 
        else
            render 'new'
        end
  end

  def destroy
    home = Home.find(params[:id])
    home.destroy
    flash[:info] = "投稿削除"
    redirect_to homes_path
  end
end
def update
        @home = Home.find(params[:id])
        @home.update(message: params[:tweet][:message], tdate: Time.current)
        if @home.save
            flash[:notice] = '1レコード変更しました。'
            redirect_to '/' 
        else
            render 'new'
        end 
end
