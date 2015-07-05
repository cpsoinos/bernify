class CreateBernies < ActiveRecord::Migration
  def change
    create_table :bernies do |t|
      t.timestamps
      t.integer :background_id, null: false
      t.integer :sticker_id, null: false
    end
  end
end
