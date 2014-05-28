class Anecdote < ActiveRecord::Base
	
	belongs_to :chapitre

	validates :sujet, presence: true
	validates :chapitre_id , numericality: { only_integer: true }
end
