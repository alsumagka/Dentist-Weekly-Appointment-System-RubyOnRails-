class AddMonthWeekToPending < ActiveRecord::Migration[7.0]
  def change
    add_column :pendings, :mweek, :string
  end
end
