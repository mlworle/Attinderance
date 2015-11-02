class Session < ActiveRecord::Base

  belongs_to :course
  has_many :attendances

  validates(:date, presence: true)
end
