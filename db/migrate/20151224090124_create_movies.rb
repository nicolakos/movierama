class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :date
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
