class ShowsController < ApplicationController
     def index
        @shows = Show.all
        render :json => @shows
    end

    def show
        animal = Show.find(params[:id])
        render :json => animal
    end


end