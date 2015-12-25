class RemoveColumnPublishedAtFromMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :published_at, :datetime
  end
end
