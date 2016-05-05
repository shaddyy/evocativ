class Recipe < ActiveRecord::Base
	has_many :comments
	
	validates :title, presence: true, length: { minimum: 5 }

    validates :category, presence: true

    validates :preptime, presence: true

    validates :ingredients, presence: true, length: {minimum: 5}

    validates :directions, presence: true, length: {minimum: 5}								      

end
