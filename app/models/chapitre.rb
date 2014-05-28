class Chapitre < ActiveRecord::Base
	has_many :scenes
	has_many :anecdotes

	validates :titre, presence: true 
	validates :numero ,uniqueness: true,:allow_blank => true , numericality: { only_integer: true }
end
