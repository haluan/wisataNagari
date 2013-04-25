class AddAttachmentPhotoToDaerahs < ActiveRecord::Migration
  def self.up
    change_table :daerahs do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :daerahs, :photo
  end
end
