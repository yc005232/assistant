class Scene < ActiveRecord::Base
	
	belongs_to :chapitre
	
	has_and_belongs_to_many :personnes
end
