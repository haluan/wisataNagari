class AddAttachmentPhotoToMakanans < ActiveRecord::Migration
  def self.up
    change_table :makanans do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :makanans, :photo
  end
end
