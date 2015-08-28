class Teacher < ActiveRecord::Base
  has_many :course_loads
  has_many :courses, :through => :course_loads
end
