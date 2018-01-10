class ChangeColumnToLike < ActiveRecord::Migration[5.1]
  def change
  	add_index :likes, [:user_id, :post_id]
  end
end
