class GymsController < ApplicationController
  # GET /gyms
  # GET /gyms.json
  def index
    @gyms = Gym.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @gyms }
    end
  end

  # GET /gyms/1
  # GET /gyms/1.json
  def show
    @gym = Gym.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @gym }
    end
  end
end
