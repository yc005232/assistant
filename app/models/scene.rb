class Scene < ActiveRecord::Base
	has_and_belongs_to_many :personnes
	belongs_to :chapitres
end
