class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, id: :uuid  do |t|
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.integer :status
      t.text :google
      t.text :linkedin
      t.text :facebook
      t.integer :status

      t.timestamps null: false
    end
  end
end
