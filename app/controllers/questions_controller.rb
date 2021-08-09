class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(your_message)
    if your_message.include?('?') == true
      'Silly question, get dressed and go to work!'
    elsif your_message.downcase == 'i am going to work right now!'
      ''
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
