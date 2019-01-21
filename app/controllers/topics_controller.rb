class TopicsController < ApplicationController
  def index
    @topics = Topic.where(genre: params[:genre]).select('id', 'title').order('chapter ASC')
  end

  def show
    @topic = Topic.find(params[:id])
    @progression = Progression.find_by(topic_id: params[:id])
    Topic.increment_counter(:review, params[:id])
  end
  
end
