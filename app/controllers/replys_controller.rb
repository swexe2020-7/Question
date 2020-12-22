class ReplysController < ApplicationController
  def index
     @replys = Reply.all
  end

  def new
    @reply = Reply.new
    
  end
  
  def create
        @reply = Reply.new(hennshin: params[:message] )
        if @reply.save
            flash[:notice] = '1レコード追加しました。'
            redirect_to homes_show_path
        else
            render 'new'
        end
  end
  
end