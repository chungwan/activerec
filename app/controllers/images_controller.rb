class ImagesController < ApplicationController
def index
    @images = Image.all
    end

# GET /images/1
  # GET /images/1.json
  def show
    @image = Image.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @image }
    end
   end

end
