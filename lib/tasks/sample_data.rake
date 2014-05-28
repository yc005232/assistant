namespace :db do
  desc "Fill database with chapitre sample data"
  task populate: :environment do
    Chapitre.create!(numero: 0,titre: "Example de chapitre")

    99.times do |n|
      titre  = Faker::Lorem.sentence
      numero = n+1
      Chapitre.create!(numero: numero,titre: titre)
    end
  end
  desc "Fill database with personne sample data"
  task populate: :environment do
    Personne.create!(nom: "nom de test")

    99.times do |n|
      nom  = Faker::Name.name
      
      Personne.create!(nom: nom)
    end
  end
  desc "Fill database with scene sample data"
  task populate: :environment do
    Scene.create!(recit: "recit de test",instant: "instant test",lieu: "lieu test")

    99.times do |n|
      recit  = Faker::Lorem.paragraph
      lieu=Faker::Address.city
      instant=Faker::Address.time_zone
      Scene.create!(recit: recit,lieu: lieu,instant: instant)
    end
  end
  desc "Fill database with anecdote sample data"
  task populate: :environment do
    Anecdote.create!(sujet: "sujet de test",texte: "texte test")

    99.times do |n|
      sujet= Faker::Lorem.sentence
      texte=Faker::Lorem.paragraph
      
      Anecdote.create!(sujet: sujet,texte: texte)
    end
  end


end