class AddMonthAndWeekToDoctornew < ActiveRecord::Migration[7.0]
  def change
    add_column :doctornews, :month, :string
    add_column :doctornews, :week, :string
  end
end
