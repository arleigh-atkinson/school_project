class Course < ActiveRecord::Base
  has_many :assignments
  has_many :quizzes
  belongs_to :teacher
  belongs_to :student
end
