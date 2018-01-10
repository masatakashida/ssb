class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :relationships do |t|
      t.integer :follwer_id, null: false
      t.integer :follwed_id, null: false

      t.timestamps
    end
  end
end
