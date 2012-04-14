class Administrators::GymWorkoutsController < Administrators::AdministratorsController
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

  # GET /gym_workouts/new
  # GET /gym_workouts/new.json
  def new
    @gym_workout = GymWorkout.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @gym_workout }
    end
  end

  # GET /gym_workouts/1/edit
  def edit
    @gym_workout = GymWorkout.find(params[:id])
  end

  # POST /gym_workouts
  # POST /gym_workouts.json
  def create
    @gym_workout = GymWorkout.new(params[:gym_workout])

    respond_to do |format|
      if @gym_workout.save
        format.html { redirect_to @gym_workout, :notice => 'Gym workout was successfully created.' }
        format.json { render :json => @gym_workout, :status => :created, :location => @gym_workout }
      else
        format.html { render :action => "new" }
        format.json { render :json => @gym_workout.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gym_workouts/1
  # PUT /gym_workouts/1.json
  def update
    @gym_workout = GymWorkout.find(params[:id])

    respond_to do |format|
      if @gym_workout.update_attributes(params[:gym_workout])
        format.html { redirect_to @gym_workout, :notice => 'Gym workout was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @gym_workout.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gym_workouts/1
  # DELETE /gym_workouts/1.json
  def destroy
    @gym_workout = GymWorkout.find(params[:id])
    @gym_workout.destroy

    respond_to do |format|
      format.html { redirect_to gym_workouts_url }
      format.json { head :no_content }
    end
  end
end
