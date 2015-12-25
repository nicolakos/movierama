class RemoveColumnDateFromMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :date, :string
  end
end
