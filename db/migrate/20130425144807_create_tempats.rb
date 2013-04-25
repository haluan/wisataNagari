class CreateTempats < ActiveRecord::Migration
  def change
    create_table :tempats do |t|
      t.string :namamatempat
      t.text :deskripsitempat

      t.timestamps
    end
  end
end
