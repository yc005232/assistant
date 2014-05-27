require 'spec_helper'

describe "chapitres/new" do
  before(:each) do
    assign(:chapitre, stub_model(Chapitre,
      :numero => 1,
      :titre => "MyString"
    ).as_new_record)
  end

  it "renders new chapitre form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", chapitres_path, "post" do
      assert_select "input#chapitre_numero[name=?]", "chapitre[numero]"
      assert_select "input#chapitre_titre[name=?]", "chapitre[titre]"
    end
  end
end
