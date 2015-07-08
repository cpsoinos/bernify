class RemoveForeignKeysFromBerniesAndAddImgUrl < ActiveRecord::Migration
  def change
    remove_column :bernies, :sticker_id, :integer
    remove_column :bernies, :background_id, :integer
    add_column :bernies, :image_url, :string, null: false
  end
end
