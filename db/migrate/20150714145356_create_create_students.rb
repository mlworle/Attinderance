class CreateCreateStudents < ActiveRecord::Migration
  def change
    create_table :create_students do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
