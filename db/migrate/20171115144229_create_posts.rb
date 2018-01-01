class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :book_name, null: false, default: ''
      t.string :title, null: false
      t.string :story_1
      t.string :story_2
      t.string :story_3
      t.string :story_4

      t.timestamps
    end
  end
end