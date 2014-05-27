require 'spec_helper'

describe "chapitres/index" do
  before(:each) do
    assign(:chapitres, [
      stub_model(Chapitre,
        :numero => 1,
        :titre => "Titre"
      ),
      stub_model(Chapitre,
        :numero => 1,
        :titre => "Titre"
      )
    ])
  end

  it "renders a list of chapitres" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Titre".to_s, :count => 2
  end
end
