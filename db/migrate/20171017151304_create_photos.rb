class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :title
      t.integer :album_id

      t.timestamps
    end
  end
end
