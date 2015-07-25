class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :post_id
      t.string :user_id
      t.text :body

      t.timestamps null: false
    end
    add_index :comments, :post_id
    add_index :comments, :user_id
  end
end
