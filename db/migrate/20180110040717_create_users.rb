class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :name, null: false
      t.string :image, null: false, default: ''
      t.string :profile, null: false, default: ''
      t.string :place, null: false, default: ''
      t.string :url, null: false, default: ''

      t.timestamps
    end
  end
end
