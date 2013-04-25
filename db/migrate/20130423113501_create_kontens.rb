class CreateKontens < ActiveRecord::Migration
  def change
    create_table :kontens do |t|
      t.string :namawisata
      t.text :tempat
      t.text :deskripsi

      t.timestamps
    end
  end
end
