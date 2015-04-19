class Professor < ActiveRecord::Base
  has_and_belongs_to_many :lectures
  belongs_to :major
end
