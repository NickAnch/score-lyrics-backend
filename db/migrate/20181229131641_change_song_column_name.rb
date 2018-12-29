class ChangeSongColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :songs, :user_id, :author_id
  end
end
