class WelcomeController < ApplicationController
  def index
    @users = User.all # getting all the users!
  end
end
