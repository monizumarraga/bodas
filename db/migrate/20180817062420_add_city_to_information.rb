class AddCityToInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :city, :string
  end
end
