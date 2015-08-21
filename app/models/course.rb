class Course < ActiveRecord::Base
  has_many :course_loads
  has_many :teachers, through: :course_loads
end
