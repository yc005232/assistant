class Personne < ActiveRecord::Base
	has_and_belongs_to_many :scenes , :class_name => "Scene" 

	validates :nom, presence: true , length: { maximum: 50 }
end
