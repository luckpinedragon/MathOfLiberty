class ResultsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    results = Result.where(user_id: current_user.id)
    results.find_or_create_by(question_id: params[:question_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    result = Result.find_by(question_id: params[:question_id])
    result.destroy if result
    redirect_back(fallback_location: root_path)
  end
  
  def update
    @question = Question.find(params[:question_id])
    @answers = @question.answers.order('section ASC')
    
    section = 0
    score = 0
    
    @answers.each do |answer|
      values = []
      answer.solutions.order('box ASC').each do |solution|
        values.push(solution.value.to_s)
      end
      
      if values.eql?(params[:response][section.to_s])
        score += answer.distribution
      end

      section += 1
    end

    result = Result.find_by(question_id: params[:question_id])
    progression = Progression.find_by(topic_id: @question.topic_id)
    
    if score == 100
      if progression.complete < @question.level
        progression.update({:complete => @question.level})
      end
      Result.increment_counter(:success, params[:id])
    else
      Result.increment_counter(:failure, params[:id])
    end
    
    if result.score < score
      result.update({:score => score})
    end
    
    redirect_back(fallback_location: root_path)
  end
  
end
