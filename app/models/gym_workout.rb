class GymWorkout < ActiveRecord::Base
  belongs_to :gym
  has_many :workouts
end
