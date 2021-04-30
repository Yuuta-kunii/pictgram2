class TopicsController < ApplicationController
  def index
   @topics = Topic.all.includes(:favorite_users)
  end
  
  def new
    @topic=Topic.new
  end
  
  def create
   @topic=current_user.topics.new(topic_params)
   if @topic.save
     redirect_to topics_path,success: '投稿に成功しました'
   else
     flash.now[:danger]= "投稿に失敗しました"
     render :new
   end
  end
  
  def show
    @topic=Topic.find(params[:id])
    @comments=@topic.comments.order(created_at: :desc)
    @comment=Comment.new
  end
  
  private
  def topic_params
    params.require(:topic).permit(:image,:description)
  end
  
  def login_check
    unless user_logged_in?
      redirect_to root_path,alter: "ログインしてください"
    end
  end
end