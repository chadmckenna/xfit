class GymWorkoutsController < ApplicationController
  # GET /gym_workouts
  # GET /gym_workouts.json
  def index
    @gym_workouts = GymWorkout.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @gym_workouts }
    end
  end

  # GET /gym_workouts/1
  # GET /gym_workouts/1.json
  def show
    @gym_workout = GymWorkout.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @gym_workout }
    end
  end
end
