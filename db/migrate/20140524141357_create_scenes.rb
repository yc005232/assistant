class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :recit
      t.string :lieu
      t.string :instant
      t.integer :chapitre_id

      t.timestamps
    end
  end
end
