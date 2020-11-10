class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :character
      t.string :image
      t.string :quote
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
