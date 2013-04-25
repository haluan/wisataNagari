class CreateDaerahs < ActiveRecord::Migration
  def change
    create_table :daerahs do |t|
      t.string :namadaerah
      t.text :deskripsidaerah

      t.timestamps
    end
  end
end
