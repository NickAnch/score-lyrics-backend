class AddColumnToRatings < ActiveRecord::Migration[5.2]
  def change
    add_column :ratings, :song_id, :integer
  end
end
