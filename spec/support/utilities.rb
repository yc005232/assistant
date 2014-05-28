def full_title(page_title)
  base_title = "Ruby on Rails Tutorial Sample App"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end

def new_chapitre(chapitre)
    visit new_chapitre_path
    fill_in "Numero",    with: chapitre.numero
    fill_in "Titre", with: chapitre.titre
    click_button "Create Chapitre"
  end
