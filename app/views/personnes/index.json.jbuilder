json.array!(@personnes) do |personne|
  json.extract! personne, :id, :nom
  json.url personne_url(personne, format: :json)
end
