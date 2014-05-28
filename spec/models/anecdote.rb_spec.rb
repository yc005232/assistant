require 'spec_helper'

describe Anecdote do
  let(:chapitre) { FactoryGirl.create(:chapitre) }
  before { @anecdote = chapitre.anecdotes.build(sujet:"Example sujet",texte: "Example texte",theme:"Example theme",chapitre_id: 0) }

  subject { @anecdote }

  it { should respond_to(:sujet) }
  it { should respond_to(:texte) }
  it { should respond_to(:theme) }
  it { should respond_to(:chapitre_id) }
  it { should respond_to(:chapitre) }
  its(:chapitre) { should eq chapitre }

  it { should be_valid }

  describe "when sujet is not present" do
     before {@anecdote.sujet=" "}
     it {should_not be_valid}
  end
  describe "when the id of the chapitre isn't an integer" do
     before { @anecdote.chapitre_id = "a" }
     it { should_not be_valid }
  end
end