class CreateGyms < ActiveRecord::Migration
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :description
      t.string :url
      t.string :rss_url

      t.timestamps
    end
  end
end
