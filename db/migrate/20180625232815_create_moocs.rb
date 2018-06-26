class CreateMoocs < ActiveRecord::Migration[5.2]
  def change
    create_table :moocs do |t|
      t.integer :topic_id
      t.string :title
      t.string :link

      t.timestamps
    end
  end
end
