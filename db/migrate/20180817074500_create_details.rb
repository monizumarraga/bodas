class CreateDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :details do |t|
      t.string :type
      t.string :name
      t.string :place
      t.string :contact
      t.text :extra
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
