class Anecdote < ActiveRecord::Base
	
	belongs_to :chapitre

	validates :sujet, presence: true
	validates :chapitre_id ,:allow_blank => true , numericality: { only_integer: true } 
end
