module UsersHelper
  def check_complete(user_id, genre)
    @completes = Topic.where(genre: genre).joins(:progressions).merge(Progression.where(user_id: user_id))
    @completes.maximum(:complete)
  end

  def check_score(user_id, level)
    @scores = Question.where(level: level).joins(:results).merge(Result.where(user_id: user_id))
    @scores.average(:score)
  end

  def sum_score(user_id)
    @results = Result.where(user_id: user_id)
    @results.sum(:score)
  end

  def sum_complete(user_id)
    @progressions = Progression.where(user_id: user_id)
    @progressions.where(complete: 4).count
  end

end
