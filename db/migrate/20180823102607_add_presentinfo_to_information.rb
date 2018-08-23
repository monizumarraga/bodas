class AddPresentinfoToInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :presentinfo, :text
  end
end
