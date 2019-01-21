class PagesController < ApplicationController
  def index
    @q = Topic.ransack(params[:q])
    @topics = @q.result(distinct: true)
  end

  def show
  end
  
  def search
    @q = Topic.search(search_params)
    @topics = @q.result(distinct: true).order('chapter ASC').page(params[:page]).per(10)
  end
  
  def filter
    @topics = Topic.joins(:tags).merge(Tag.where(item: params[:item])).select('id', 'title').order('chapter ASC').page(params[:page]).per(10)
  end
  
  private
  
  def search_params
    params.require(:q).permit(:content_cont_all, :s)
  end
end
