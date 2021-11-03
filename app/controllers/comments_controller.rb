class CommentsController < ApplicationController
   def create
    @comment = Comment.new(comment_params)
     if @comment.save
      redirect_to opportunity_path(@comment.opportunity)
    else
     @opportunity = @comment.opportunity
     @comments = @opportunity.comments
     render "opportunities/show"
   end
  end
 
  private

  def comment_params
    params.require(:comment).permit(:text,:kind_id).merge(user_id: current_user.id, opportunity_id: params[:opportunity_id])
  end
end
