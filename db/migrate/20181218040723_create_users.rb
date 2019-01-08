class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :name
      t.string :surname
      t.string :email
      t.string :password_digest
      t.string :roles
      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
