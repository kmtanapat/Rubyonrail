class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :details
      t.integer :volumn
      t.integer :quantity
      t.integer :cost
      t.integer :price
      t.datetime :sell_date

      t.timestamps
    end
  end
end
