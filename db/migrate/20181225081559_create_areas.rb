class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas do |t|
      t.string :district
      t.string :province
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
