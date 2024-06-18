class CreateAppoints < ActiveRecord::Migration[7.0]
  def change
    create_table :appoints do |t|
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :contact
      t.string :doct

      t.timestamps
    end
  end
end
