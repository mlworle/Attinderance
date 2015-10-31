class Student < ActiveRecord::Base
  has_many :course_rosters
  has_many :courses, :through => :course_rosters 
  has_many :attendances

  validates(:name, presence: true, length: {maximum: 50}, uniqueness: true)

end
