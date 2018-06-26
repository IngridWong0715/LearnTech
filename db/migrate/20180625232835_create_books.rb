class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :topic_id
      t.string :title
      t.string :author
      t.string :isbn

      t.timestamps
    end
  end
end
