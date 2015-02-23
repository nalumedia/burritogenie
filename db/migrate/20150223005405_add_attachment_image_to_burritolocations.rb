class AddAttachmentImageToBurritolocations < ActiveRecord::Migration
  def self.up
    change_table :burritolocations do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :burritolocations, :image
  end
end
