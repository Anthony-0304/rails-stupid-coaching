class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @query = params[:question]
    if @query == 'I am going to work'
      @reply = 'Great!'
    elsif @query.include?('?')
      @reply = 'Silly question, get dressed and go to work!'
    else
      @reply = "I don't care, get dressed and go to work!"
    end
  end
end
