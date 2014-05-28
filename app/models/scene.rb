class Scene < ActiveRecord::Base
	
	belongs_to :chapitre
	
	has_and_belongs_to_many :personnes

	validates :instant, presence: true
	validates :chapitre_id , :allow_blank => true ,numericality: { only_integer: true }
end
