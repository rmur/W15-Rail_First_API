class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.text :title

      t.timestamps null: false
    end
  end
end
