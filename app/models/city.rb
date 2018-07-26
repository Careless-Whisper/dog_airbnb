class City < ApplicationRecord
  has_many :dogsitters
  has_many :dogs, :through => :strolls
  has_many :city
end
