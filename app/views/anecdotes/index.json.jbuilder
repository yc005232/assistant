json.array!(@anecdotes) do |anecdote|
  json.extract! anecdote, :id, :sujet, :texte, :theme, :chapitre_id
  json.url anecdote_url(anecdote, format: :json)
end
