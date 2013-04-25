class CreateMakanans < ActiveRecord::Migration
  def change
    create_table :makanans do |t|
      t.string :namamakanan
      t.text :deskripsimakanan

      t.timestamps
    end
  end
end
