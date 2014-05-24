json.array!(@scenes) do |scene|
  json.extract! scene, :id, :recit, :lieu, :instant, :chapitre_id
  json.url scene_url(scene, format: :json)
end
