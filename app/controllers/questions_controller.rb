class QuestionsController < ApplicationController

  def ask
    params['question']
  end

  def answer
    if params['question'].end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif params['question'] == 'I am going to work!'
      @answer = ''
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
