class QuestionsController < ApplicationController
  def ask; end

  def answer
    @questions = []
    question = params['question']
    answer = ''
    if question == 'I am going to work'
      answer = 'Great'
    elsif question.end_with?('?')
      answer = 'Silly question, get dressed and go to work!'
    else
      answer = "I don't care, get dressed and go to work!"
    end
    @questions << { question:, answer: }
  end
end
