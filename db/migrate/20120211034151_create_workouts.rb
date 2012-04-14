class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :result
      t.integer :gym_workout_id
      t.integer :user_id
      t.date :completion_date

      t.timestamps
    end
  end
end
