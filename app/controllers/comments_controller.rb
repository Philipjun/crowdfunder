class CommentsController < ApplicationController
   before_filter :load_project

  def show
    @comment = Comment.find(params[:id])
    if current_user
    @comment = @project.comments.build
  	end
  end

  def create
  	@comment = @project.comments.build(comment_params)
    @comment.user_id = current_user.id


    if @comment.save
      redirect_to @project, notice: 'Comment created successfully'
    else
      render 'projects/show'
    end
  end

  def destroy
  	@comment = Comment.find(params[:id])
    @comment.destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_text, :project_id)
  end

  def load_project
    @project = Project.find(params[:project_id])
  end
end
