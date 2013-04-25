class AddDaerahIdToBudaya < ActiveRecord::Migration
  def change
    add_column :budayas, :daerah_id, :integer
  end
end
