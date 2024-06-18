class AddNameToPending < ActiveRecord::Migration[7.0]
  def change
    add_column :pendings, :docfirstname, :string
    add_column :pendings, :docmiddlename, :string
    add_column :pendings, :doclastname, :string
  end
end
