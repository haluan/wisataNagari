class AddAttachmentPhotoToKontens < ActiveRecord::Migration
  def self.up
    change_table :kontens do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :kontens, :photo
  end
end
