class QuestionsController < ApplicationController
  def ask
    # par défaut : app/views/questions/ask.html.erb
  end

  def answer
    # par défaut : app/views/questions/answer.html.erb
    if params[:interrogation].include? '?'
      @rep = 'Silly question, get dressed and go to work!'
    elsif params[:interrogation] == 'I am going to work'
      @rep = 'Great!'
    else
      @rep = "I don't care, get dressed and go to work!"
    end
  end
end
