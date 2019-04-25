class CreateApiBottles < ActiveRecord::Migration[5.2]
  def change
    create_table :api_bottles do |t|
      t.integer :ml
      t.string :color

      t.timestamps
    end
  end
end
