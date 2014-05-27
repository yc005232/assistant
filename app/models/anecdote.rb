class Anecdote < ActiveRecord::Base
	
	belongs_to :chapitre

	validates :sujet, presence: true
end
