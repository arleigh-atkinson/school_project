class Course < ActiveRecord::Base
  has_many :assignments, :dependent => :destroy
  has_many :quizzes, :dependent => :destroy
  belongs_to :teacher
  belongs_to :student
end
