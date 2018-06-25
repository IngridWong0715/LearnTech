class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.integer :topic_id
      t.text :description
      t.date :deadline
      t.string :status

      t.timestamps
    end
  end
end
