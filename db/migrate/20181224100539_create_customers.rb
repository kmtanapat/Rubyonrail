class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :house_num
      t.string :build
      t.string :group
      t.string :road
      t.string :district
      t.string :township
      t.string :city
      t.integer :mail
      t.integer :tel
      t.integer :image

      t.timestamps
    end
  end
end
