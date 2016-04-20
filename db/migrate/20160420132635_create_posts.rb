class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string "content"
      t.string "feedback"
      t.integer "folderindex"
      
      t.timestamps null: false
    end
  end
end
