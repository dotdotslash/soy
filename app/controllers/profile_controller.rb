class ProfileController < ApplicationController
  
  def index
      @users = User.all # getting all the users!
  end
  
  def show
    
  end
  
end
