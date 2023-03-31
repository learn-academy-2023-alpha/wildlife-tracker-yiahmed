class Animal < ApplicationRecord
    has_many :sightings
    validates :common_name, :scientific_binomial, presence: true
    validates :common_name, :scientific_binomial, uniqueness: true
    validate :same_name
    
    
    def same_name
        if common_name == scientific_binomial
          errors.add(:common_name, "cannot be the same as scientific binomial")
        end
    end
end
