class Lecture < ActiveRecord::Base
  has_and_belongs_to_many :professors
  has_and_belongs_to_many :majors
  has_many :reviews
end
