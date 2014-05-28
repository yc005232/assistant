require 'spec_helper'

describe "User pages" do

  subject { page }

       describe "index" do
    let(:chapitre) { FactoryGirl.create(:chapitre) }
    before(:each) do
      new_chapitre chapitre
      visit chapitres_path
    end

    it { should have_title('All chapitres') }
    it { should have_content('All chapitres') }

    describe "pagination" do

      before(:all) { 30.times { FactoryGirl.create(:chapitre) } }
      after(:all)  { Chapitre.delete_all }

      it { should have_selector('div.pagination') }

      it "should list each chapitre" do
        Chapitre.paginate(page: 1).each do |chapitre|
          expect(page).to have_selector('li', text: chapitre.titre)
      end
    end
  end
  end
end