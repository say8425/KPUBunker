class Lecture < ActiveRecord::Base
  has_and_belongs_to_many :professors
  belongs_to :majors
  has_many :reviews
end
