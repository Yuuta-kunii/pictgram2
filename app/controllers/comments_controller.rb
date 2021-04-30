class CommentsController < ApplicationController
  
  
  def create
   @topic=Topic.find(params[:topic_id])
   @comment=Comment.new(comment_params)
   if @comment.save
    redirect_to topics_path,success:"コメントしました"
   else
    redirect_to topics_path,danger:"コメントできませんでした"
   end
  end
  
  private
  
   def comment_params
     params.require(:comment).permit(:content).merge(user_id: current_user.id,topic_id: params[:topic_id])
   end
end