class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :username
      t.string :password
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :monmor
      t.string :monaf
      t.string :tuemor
      t.string :tueaf
      t.string :wedmor
      t.string :wedaf
      t.string :thurmor
      t.string :thuraf
      t.string :frimor
      t.string :friaf

      t.timestamps
    end
  end
end
