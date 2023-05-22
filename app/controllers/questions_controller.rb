class QuestionsController < ApplicationController
  def ask
    # @query = params[question]
    # raise
  end

  def answer
    @query = params[:question]
    if @query.ends_with?("?")
      @answer = 'Silly question, get dressed and go to work!'
    elsif @query == 'I am going to work'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
