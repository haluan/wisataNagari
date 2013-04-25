class AddDaerahIdToKontens < ActiveRecord::Migration
  def change
    add_column :kontens, :daerah_id, :integer
  end
end
