FactoryGirl.define do
    factory :chapitre do
        sequence(:numero) {|n| n}
        sequence (:titre) { |n| "Example titre_#{n}@example.com"}
        
  end
end