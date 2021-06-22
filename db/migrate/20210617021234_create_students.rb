class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :login_id
      t.string :pass
      t.integer :gakka_id

      t.timestamps
    end
  end
end
