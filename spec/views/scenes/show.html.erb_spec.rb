require 'spec_helper'

describe "scenes/show" do
  before(:each) do
    @scene = assign(:scene, stub_model(Scene,
      :recit => "Recit",
      :lieu => "Lieu",
      :instant => "Instant",
      :chapitre_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Recit/)
    rendered.should match(/Lieu/)
    rendered.should match(/Instant/)
    rendered.should match(/1/)
  end
end
