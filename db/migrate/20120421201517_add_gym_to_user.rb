class AddGymToUser < ActiveRecord::Migration
  def change
    add_column :users, :gym_id, :integer
  end
end
