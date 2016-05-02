class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :homenum
      t.string :mobnum
      t.string :adress
      t.integer :user_id
      t.integer :category_id
      t.string :picture

      t.timestamps null: false
    end
  end
end
