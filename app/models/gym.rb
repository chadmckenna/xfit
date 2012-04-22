class Gym < ActiveRecord::Base
  has_many :gym_workouts
  belongs_to :user
  has_many :users
end
