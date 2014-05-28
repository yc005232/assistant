namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Chapitre.create!(numero: 0,titre: "Example de chapitre")

    99.times do |n|
      titre  = Faker::Lorem.sentence
      numero = n+1
      Chapitre.create!(numero: numero,titre: titre)
    end
  end
end