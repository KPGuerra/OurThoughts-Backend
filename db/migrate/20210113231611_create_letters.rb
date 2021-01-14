class CreateLetters < ActiveRecord::Migration[6.0]
  def change
    create_table :letters do |t|
      t.integer :user_id
      t.integer :thought_id
      t.text :content
      t.boolean :like

      t.timestamps
    end
  end
end
