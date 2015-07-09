class AddAttachmentMemeToBernies < ActiveRecord::Migration
  def self.up
    change_table :bernies do |t|
      t.attachment :meme
    end
  end

  def self.down
    remove_attachment :bernies, :meme
  end
end
