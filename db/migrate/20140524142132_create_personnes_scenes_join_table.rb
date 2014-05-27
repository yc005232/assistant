class CreatePersonnesScenesJoinTable < ActiveRecord::Migration
  def self.up
	create_table :personnes_scenes, :id => false do |t|
	t.integer "personne_id"
	t.integer "scene_id" # Pour créer les clés etrangères
	end
	add_index :personnes_scenes, [:personne_id, :scene_id] # Optionnel
	end	
	def self.down
		drop_table :personnes_scenes
	end
end
