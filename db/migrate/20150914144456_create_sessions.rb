class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.datetime :date
      t.belongs_to :course, index: true
      t.integer :attendance_id

      t.timestamps null: false
    end
  end
end
