class CommentsController < ApplicationController
  # lot of controller code :D
  def index
# check for security?
    @commentable = Object.const_get(params[:type].camelize).find(params[:id])
    @comments = @commentable.comments
    render layout: false
    
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    if @comment.save
      respond_to do |format|
        format.js {  }
      end
    end
    # if @comment.save
    # format.js
    # end
  end

  def destroy
    @comment = Comment.find(params[:id])

    if @comment.destroy
      respond_to do |format|
        format.js {  }
      end
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def comment_params
    params.require(:comment).permit(:body, :commentable_type, :commentable_id)
  end
end
