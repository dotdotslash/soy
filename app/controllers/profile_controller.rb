class ProfileController < ApplicationController
  
  def index
      @users = User.all # getting all the users!
      
      @uploader = User.new.video
     # @uploader.success_action_redirect = welcome_index
  end
  
  
  def new
    @uploader = User.new.video
     # @users = User.new(key: params[:key]) # getting all the users!
  end
    
  
  
  def show
      @users = User.find(params[:id]) #
  end
  
end
