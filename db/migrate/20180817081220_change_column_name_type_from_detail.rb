class ChangeColumnNameTypeFromDetail < ActiveRecord::Migration[5.2]
  def change
    rename_column :details, :type, :case
  end
end
