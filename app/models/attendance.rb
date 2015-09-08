class Attendance < ActiveRecord::Base

  has_many :sessions
  has_many :students
  
end
