class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.integer :customer_id
      t.string :business
      t.integer :factory_id
      t.integer :company_id
      t.string :contact
      t.string :howto
      t.datetime :time_at
      t.integer :product_id

      t.timestamps
    end
  end
end
