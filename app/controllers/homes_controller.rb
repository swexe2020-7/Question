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
  
   def show
        @home = Home.find(params[:id])
   end
   
   
   def edit
        @home = Home.find(params[:id])
   end
  
 
  
  def update
        @home = Home.find(params[:id])
        @home.update(message: params[:home][:message], tdate: Time.current)
        if @home.save
            flash[:notice] = '1レコード変更しました。'
            redirect_to '/' 
        else
            render 'new'
        end 
  end
  
  def search
    if params[:message].present?
      @homes = Home.where('message LIKE ?', "%#{params[:message]}%")
    else
      @homes = Home.none
    end
  end
end
