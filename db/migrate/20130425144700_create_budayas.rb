class CreateBudayas < ActiveRecord::Migration
  def change
    create_table :budayas do |t|
      t.string :namabudaya
      t.text :deskripsibudaya

      t.timestamps
    end
  end
end
