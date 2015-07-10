class CreateUsers < ActiveRecord::Migration
  def change
    drop_table(:users, if_exists: true)
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps null: false
    end
  end
end
