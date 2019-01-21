class ProgressionsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    progressions = Progression.where(user_id: current_user.id)
    progressions.find_or_create_by(topic_id: params[:topic_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    progression = Progression.find_by(topic_id: params[:topic_id])
    progression.destroy if progression
    redirect_back(fallback_location: root_path)
  end
  
  def update
    progression = Progression.find_by(topic_id: params[:topic_id])
    progression.update(params.require(:progression).permit(:memo, :evaluation, :display))
    redirect_back(fallback_location: root_path)
  end
end
