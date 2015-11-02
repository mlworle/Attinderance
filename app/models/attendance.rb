class Attendance < ActiveRecord::Base

  belongs_to :session
  belongs_to :student
  
  validates(:present, presence: true)
end
