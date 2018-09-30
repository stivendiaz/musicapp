class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.text :name
      t.integer :number
      t.string :preview_url
      t.references :songs, :album, foreign_key: true

      t.timestamps
    end
  end
end
