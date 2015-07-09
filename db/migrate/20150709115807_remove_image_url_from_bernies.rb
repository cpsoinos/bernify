class RemoveImageUrlFromBernies < ActiveRecord::Migration
  def change
    remove_column :bernies, :image_url, :string
  end
end
