class Professor < ActiveRecord::Base
  has_and_belongs_to_many :lectures
  has_and_belongs_to_many :majors
  has_many :reviews
end
