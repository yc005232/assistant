require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "Chapitres" do
    before do
      new_chapitre FactoryGirl.create(:chapitre)
      FactoryGirl.create(:chapitre, numero: 1, titre: "Example title" )
      FactoryGirl.create(:chapitre, numero: 2, titre: "Example titre" )
      visit chapitres_path
    end

    it { should have_title('All chapitres') }
    it { should have_content('All chapitres') }

    it "should list each chapter" do
      Chapitre.all.each do |chapitre|
        expect(page).to have_selector('li', text: chapitre.titre)
      end
    end
  end
  
end