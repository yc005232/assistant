require 'spec_helper'

describe "scenes/index" do
  before(:each) do
    assign(:scenes, [
      stub_model(Scene,
        :recit => "Recit",
        :lieu => "Lieu",
        :instant => "Instant",
        :chapitre_id => 1
      ),
      stub_model(Scene,
        :recit => "Recit",
        :lieu => "Lieu",
        :instant => "Instant",
        :chapitre_id => 1
      )
    ])
  end

  it "renders a list of scenes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Recit".to_s, :count => 2
    assert_select "tr>td", :text => "Lieu".to_s, :count => 2
    assert_select "tr>td", :text => "Instant".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
