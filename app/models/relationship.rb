class Relationship < ActiveRecord::Base
	belongs_to :personne, class_name: "Personne"
        belongs_to :scene, class_name: "Scene"
end
