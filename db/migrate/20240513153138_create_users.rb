class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :contact
      t.string :appoint
      t.string :doct

      t.timestamps
    end
  end
end
