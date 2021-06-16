class CreatePictures < ActiveRecord::Migration[6.1]
  def change
    create_table :pictures do |t|
      t.integer :student_id
      t.string :place
      t.datetime :date
      t.integer :event_id

      t.timestamps
    end
  end
end
