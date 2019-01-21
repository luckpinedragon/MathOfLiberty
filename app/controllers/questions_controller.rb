class QuestionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @questions = Question.where(topic_id: params[:topic_id]).select('id', 'theme').order('level ASC')
  end

  def show
    @question = Question.find(params[:id])
    @result = Result.find_by(question_id: params[:id])
    Question.increment_counter(:trial, params[:id])
  end
end
