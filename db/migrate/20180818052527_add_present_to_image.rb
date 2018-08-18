class AddPresentToImage < ActiveRecord::Migration[5.2]
  def change
    add_reference :images, :present, foreign_key: true
  end
end
