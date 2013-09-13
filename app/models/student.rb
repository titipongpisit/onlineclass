class Student < ActiveRecord::Base
  has_many :courses
  has_many :teachers, through: :courses
  # Remember to create a migration!
end
