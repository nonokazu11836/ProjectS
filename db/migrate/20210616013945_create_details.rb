class CreateDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :details do |t|
      t.integer :picture_id
      t.integer :student_id

      t.timestamps
    end
  end
end
