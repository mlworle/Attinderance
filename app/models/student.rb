class Student < ActiveRecord::Base
  has_many :course_rosters
  has_many :courses, :through => :course_rosters 
  has_many :attendances
end
