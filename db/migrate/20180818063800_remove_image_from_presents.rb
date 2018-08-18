class RemoveImageFromPresents < ActiveRecord::Migration[5.2]
  def change
    remove_column :presents, :image_id, :integer
  end
end
