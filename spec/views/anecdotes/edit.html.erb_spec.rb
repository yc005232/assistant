require 'spec_helper'

describe "anecdotes/edit" do
  before(:each) do
    @anecdote = assign(:anecdote, stub_model(Anecdote,
      :sujet => "MyString",
      :texte => "MyString",
      :theme => "MyString",
      :chapitre_id => 1
    ))
  end

  it "renders the edit anecdote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", anecdote_path(@anecdote), "post" do
      assert_select "input#anecdote_sujet[name=?]", "anecdote[sujet]"
      assert_select "input#anecdote_texte[name=?]", "anecdote[texte]"
      assert_select "input#anecdote_theme[name=?]", "anecdote[theme]"
      assert_select "input#anecdote_chapitre_id[name=?]", "anecdote[chapitre_id]"
    end
  end
end
