class CreateCommments < ActiveRecord::Migration
  def change
    create_table :commments do |t|
      t.string :user_name
      t.text :body
      t.integer :idea_id

      t.timestamps null: false
    end
  end
end
