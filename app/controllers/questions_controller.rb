class QuestionsController < ApplicationController
  def index
      @qestions = Question.all
  end

  def new
  end

  def create
  end

  def destroy
  end
end
