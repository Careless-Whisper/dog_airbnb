class Dog < ApplicationRecord
has_many :dogsitters, :through => :strolls
has_many :strolls
end
