class ChangeColumnToPost < ActiveRecord::Migration[5.1]
  def change
  	add_index :posts, [:word, :tag, :category_id, :user_id]
  end
end
