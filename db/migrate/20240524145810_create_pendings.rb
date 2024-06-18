class CreatePendings < ActiveRecord::Migration[7.0]
  def change
    create_table :pendings do |t|
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :contact
      t.string :adlaw
      t.string :status, default: "Pending"

      t.timestamps
    end
  end
end
