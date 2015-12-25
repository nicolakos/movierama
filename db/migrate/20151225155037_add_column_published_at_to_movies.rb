class AddColumnPublishedAtToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :published_at, :datetime
  end
end
