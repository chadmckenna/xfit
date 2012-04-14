class CreateGymWorkouts < ActiveRecord::Migration
  def change
    create_table :gym_workouts do |t|
      t.integer :gym_id
      t.string :workout
      t.date :date

      t.timestamps
    end
  end
end
