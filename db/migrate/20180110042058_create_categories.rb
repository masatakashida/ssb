class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.string :image, null: false, default: ''

      t.timestamps
    end
  end
end
