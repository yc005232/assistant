require 'spec_helper'

describe "chapitres/edit" do
  before(:each) do
    @chapitre = assign(:chapitre, stub_model(Chapitre,
      :numero => 1,
      :titre => "MyString"
    ))
  end

  it "renders the edit chapitre form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", chapitre_path(@chapitre), "post" do
      assert_select "input#chapitre_numero[name=?]", "chapitre[numero]"
      assert_select "input#chapitre_titre[name=?]", "chapitre[titre]"
    end
  end
end
