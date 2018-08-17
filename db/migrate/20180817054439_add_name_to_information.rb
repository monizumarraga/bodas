class AddNameToInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :name, :string
    add_column :information, :date, :date
    add_column :information, :place, :string
    add_column :information, :restaurant, :string
  end
end
