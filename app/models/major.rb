class Major < ActiveRecord::Base
  has_many :lectures
  has_many :professors
end
