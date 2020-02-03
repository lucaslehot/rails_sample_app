class CreateTableProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.timestamp
    end
  end
end
