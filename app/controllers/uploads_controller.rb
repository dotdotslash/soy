class UploadsController < ApplicationController
  include Transloadit::Rails::ParamsDecoder
def new
      #transloadit
      @upload = Upload.new
 end

  def create
   #   :transloadit 
      @upload = Upload.new(upload_params)
      
      if @comment.save
        format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
      
 end
  #end
 private
  # Use callbacks to share common setup or constraints between actions.
  def set_upload
    @upload = Upload.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def upload_params
    params[:upload]
  end

  
end