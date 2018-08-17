class AddHoutToInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :hour, :datetime
  end
end
