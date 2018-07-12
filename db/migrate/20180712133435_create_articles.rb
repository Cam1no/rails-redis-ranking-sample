class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.references :user, null: false, comment: 'userのid'
      t.string :title, null: false, comment: 'タイトル'
      t.text :content, null: false, comment: '本文'
      t.timestamps
    end
    add_index :articles, :title
  end
end
