class Major < ActiveRecord::Base
  has_and_belongs_to_many :lectures
  has_and_belongs_to_many :professors
end
