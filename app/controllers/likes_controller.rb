class LikesController < ApplicationController
  def create
    # check for security?
    if Object.const_defined?(params[:type].camelize) and @likable = Object.const_get(params[:type].camelize).find(params[:id])
      @like = Like.new(liked: true, user_id: current_user.id, likable_id: @likable.id, likable_type: @likable.class.to_s)
      if @like.save
        respond_to do |format|
          format.js {  }
        end
      end
    else
      flash[:danger] = "Wrong parameters"
      redirect_to root_path
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @likable = @like.likable

    if @like.destroy
      respond_to do |format|
        format.js {  }
      end
    else
      flash[:danger] = "Wrong parameters"
      redirect_to root_path
    end
  end
end
