class AddIntroductionToDetail < ActiveRecord::Migration[5.2]
  def change
    add_column :details, :introduction, :text
  end
end
