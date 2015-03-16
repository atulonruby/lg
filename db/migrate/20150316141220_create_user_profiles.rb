class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_id, null: false
      t.text :about
      t.date :date_of_birth
      t.string :profile_image
      t.string :profile_image_dir
      t.integer :profile_image_approved,   null: false,default: '0'
      t.string :linkedin_profile
      t.string :gender
      t.string :city_id
      t.integer :account_type, null: false, default: '0'
      t.datetime :premium_upto
      t.string :linkedin_id
      t.string :google_id
      t.datetime :last_login_time
      t.string :last_login_ip
      t.integer :subscribed,   null: false,default: '1'
      t.timestamps null: false
    end
    add_index(:user_profiles, :user_id)
    add_index(:user_profiles, :city_id)
  end
end
