class CreatePorducts < ActiveRecord::Migration[5.2]
  def change
    create_table :porducts do |t|
      t.string :name
      t.string :description
      t.string :department
      t.float :price

      t.timestamps
    end
  end
end
