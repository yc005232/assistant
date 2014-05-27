require 'spec_helper'

describe "scenes/edit" do
  before(:each) do
    @scene = assign(:scene, stub_model(Scene,
      :recit => "MyString",
      :lieu => "MyString",
      :instant => "MyString",
      :chapitre_id => 1
    ))
  end

  it "renders the edit scene form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", scene_path(@scene), "post" do
      assert_select "input#scene_recit[name=?]", "scene[recit]"
      assert_select "input#scene_lieu[name=?]", "scene[lieu]"
      assert_select "input#scene_instant[name=?]", "scene[instant]"
      assert_select "input#scene_chapitre_id[name=?]", "scene[chapitre_id]"
    end
  end
end
