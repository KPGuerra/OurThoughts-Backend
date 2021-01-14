class CreateThoughts < ActiveRecord::Migration[6.0]
  def change
    create_table :thoughts do |t|
      t.integer :user_id
      t.string :title
      t.text :content
      t.string :sentiment
      t.string :tags, array: true, default: []
      t.string :emotion
      t.date :date
      t.timestamps
    end
  end
end
