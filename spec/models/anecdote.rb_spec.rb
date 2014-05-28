require 'spec_helper'

describe Anecdote do
  before do
	@anecdote=Anecdote.new(sujet:"Example sujet",texte: "Example texte",theme:"Example theme",chapitre_id: 0)
  end

  subject {@anecdote}
  
  it {should respond_to(:sujet)} 

  it {should be_valid}

  describe "when sujet is not present" do
     before {@anecdote.sujet=" "}
     it {should_not be_valid}
  end
  describe "when the id of the chapitre isn't an integer" do
     before { @anecdote.chapitre_id = "a" }
     it { should_not be_valid }
  end
end