class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false, comment: 'ユーザー名'
      t.string :email, null: false, comment: 'Email'
      t.timestamps
    end
    add_index :users, :name
    add_index :users, :email, unique: true
  end
end
