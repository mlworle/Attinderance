class CreateCourseRosters < ActiveRecord::Migration
  def change
    create_table :course_rosters do |t|
      t.belongs_to :student, index: true
      t.belongs_to :course, index: true

      # Found this code on StackOverFlow
      #t.student_id, :integer
      #t.course_id, :integer

      t.timestamps null: false
    end
  end
end
