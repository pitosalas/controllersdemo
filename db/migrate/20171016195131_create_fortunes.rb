class CreateFortunes < ActiveRecord::Migration[5.1]
  def change
    create_table :fortunes do |t|
      t.string :fortune
      t.string :source

      t.timestamps
    end
  end
end
