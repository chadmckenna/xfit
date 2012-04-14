require 'test_helper'

class GymWorkoutsControllerTest < ActionController::TestCase
  setup do
    @gym_workout = gym_workouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gym_workouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gym_workout" do
    assert_difference('GymWorkout.count') do
      post :create, :gym_workout => @gym_workout.attributes
    end

    assert_redirected_to gym_workout_path(assigns(:gym_workout))
  end

  test "should show gym_workout" do
    get :show, :id => @gym_workout
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @gym_workout
    assert_response :success
  end

  test "should update gym_workout" do
    put :update, :id => @gym_workout, :gym_workout => @gym_workout.attributes
    assert_redirected_to gym_workout_path(assigns(:gym_workout))
  end

  test "should destroy gym_workout" do
    assert_difference('GymWorkout.count', -1) do
      delete :destroy, :id => @gym_workout
    end

    assert_redirected_to gym_workouts_path
  end
end
