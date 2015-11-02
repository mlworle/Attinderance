class Course < ActiveRecord::Base
  has_many :course_loads
  has_many :course_rosters
  has_many :teachers, :through => :course_loads
  has_many :students, :through => :course_rosters
  has_many :sessions

  validates(:name, presence: true, length: {maximum: 50}, uniqueness: true)
end
