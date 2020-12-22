class ReplysController < ApplicationController
  def index
     @replys = Reply.all
  end

  def new
    @reply = Reply.new
    
  end
  
  def create
        @reply = Reply.new(hennshin: params[:hennshin] )
        if @reply.save
            
            redirect_to homes_path
        else
            render 'new'
        end
  end
  
  def destroy
    home = Home.find(params[:id])
    home.destroy
    flash[:info] = "投稿削除"
    redirect_to homes_show_path
  end
  
   
  def update
        @reply = Reply.find(params[:id])
        @reply.update(hennshin: params[:hennshin], tdate: Time.current)
        if @reply.save
            flash[:notice] = '1レコード変更しました。'
            redirect_to '/' 
        else
            render 'new'
        end 
  end
end