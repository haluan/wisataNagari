class AddDaerahIdToMakanan < ActiveRecord::Migration
  def change
    add_column :makanans, :daerah_id, :integer
  end
end
