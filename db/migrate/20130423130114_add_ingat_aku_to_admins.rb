class AddIngatAkuToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :ingat_aku, :string
    add_index :admins, :ingat_aku
  end
end
