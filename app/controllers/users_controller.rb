class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @ranking_score = Result.ranking
    @players = User.find(@ranking_score.keys)
    @marking_complete = Progression.marking
    @challengers = User.find(@marking_complete.keys)
  end
  
  def show
    @user = User.find(params[:id])
    @topics = Topic.joins(:progressions).merge(Progression.where(display: true)).order('chapter ASC')
    @questions = Question.joins(:results).merge(Result.where(visualize: true)).order('level ASC')
  end
  
end
