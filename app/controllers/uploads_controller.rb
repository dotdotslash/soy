class UploadsController < ApplicationController
  include Transloadit::Rails::ParamsDecoder
def new
      #transloadit
      @upload = Upload.new
 end

  def create
   #   :transloadit 
 end
  #end


  
end