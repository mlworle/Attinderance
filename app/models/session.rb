class Session < ActiveRecord::Base

  belongs_to :course
  has_many :attendances

end
