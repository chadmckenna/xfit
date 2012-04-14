class Workout < ActiveRecord::Base
  belongs_to :user
  belongs_to :gym_workout
end
