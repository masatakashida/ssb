class ChangeColumnToRelationship < ActiveRecord::Migration[5.1]
  def change
  	add_index :relationships, [:follwer_id, :follwed_id]
  end
end
