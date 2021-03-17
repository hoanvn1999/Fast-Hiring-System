class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :phone_number
      t.string :password
      t.string :password_digest
      t.string :full_name
      t.datetime :date_of_birth
      t.text :address
      t.integer :role
      t.string :activation_digest
      t.boolean :activated
      t.datetime :actived_at

      t.timestamps
      t.belongs_to :institution, foreign_key: true
    end
    add_index :users, :actived_at
  end
end
