class CommentsController < ApplicationController
  # before_action :authenticate_user!

  def create
    @stuff = Stuff.find(params[:place_id])
    @stuff.comments.create(comment_params.merge(user: current_user))
    redirect_to stuff_path(@stuff)
  end

  private

  def comment_params
    params.require(:comment)
  end
end
