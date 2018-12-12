class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :singer
      t.string :name
      t.text :lyrics
      t.text :translate
      t.integer :views
      t.string :linkUrl
      t.timestamps
    end
  end
end
