class CommentsController < ApplicationController
  before_action :authenticate_user!
 # before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def create
    @micropost = Micropost.find(params[:micropost_id])
    @comment = @micropost.comments.create(params[:comment].permit(:content))
    redirect_to micropost_path(@micropost)
  end

end
