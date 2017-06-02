class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.integer :user_id
      t.string :title
      t.text :content
      t.string :img_url
      
      t.timestamps null: false
    end
  end
end
