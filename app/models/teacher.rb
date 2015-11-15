class Teacher < ActiveRecord::Base
  has_many :course_loads
  has_many :courses, :through => :course_loads
  has_secure_password

  validates(:name, presence: true, length: {maximum: 50}, uniqueness: true)

  VALID_PASSWORD_REGEX = /\A(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$\z/
  validates(:password, presence: true, length: {maximum: 10}, format: { with: VALID_PASSWORD_REGEX})

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates(:email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX })  
end
