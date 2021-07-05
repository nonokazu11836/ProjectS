class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
<<<<<<< HEAD:db/migrate/20210702033543_create_students.rb
      t.string :student_id
      t.string :gakka_id
=======
      t.integer :student_id
      t.integer :gakka_id
>>>>>>> b1593fa0cbafe7cf684c5375b47bb9db6d0773c9:db/migrate/20210702094452_create_students.rb

      t.timestamps
    end
  end
end
