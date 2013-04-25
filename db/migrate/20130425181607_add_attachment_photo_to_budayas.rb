class AddAttachmentPhotoToBudayas < ActiveRecord::Migration
  def self.up
    change_table :budayas do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :budayas, :photo
  end
end
