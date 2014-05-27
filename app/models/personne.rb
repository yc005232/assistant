class Personne < ActiveRecord::Base
	has_and_belongs_to_many :scenes , :class_name => "Scene" 
end
