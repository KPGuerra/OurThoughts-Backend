class RemoveLikeFromLetters < ActiveRecord::Migration[6.0]
  def change
    remove_column :letters, :like, :boolean
  end
end
