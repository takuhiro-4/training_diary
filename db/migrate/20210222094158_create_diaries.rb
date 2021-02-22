class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.string :name
      t.text :content
      t.datetime :start_time

      t.timestamps
    end
  end
end
