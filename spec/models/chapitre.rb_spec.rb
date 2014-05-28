require 'spec_helper'

describe Chapitre do
 before do
	@chapitre=Chapitre.new(numero: 0 ,titre: "Example Chapitre")
  end

  subject {@chapitre}
  

  it {should respond_to(:titre)} 

  it {should be_valid}

  describe "when titre is not present" do
     before {@chapitre.titre=" "}
     it {should_not be_valid}
  end
  describe "when number isn't an integer" do
     before { @chapitre.numero = "a" }
     it { should_not be_valid }
  end



describe "when Chapitre.new is called" do
  before(:each) do
    @chapitre = Chapitre.new
  end

  
  it "should be ok with an associated scene" do
    @chapitre.scene = Scene.new
    @chapitre.should have(:no).errors_on(:scenes)
  end

  it "should have an associated scene" do
    @chapitre.should have_at_least(1).error_on(:scene)
  end

  
  it "should be ok with at least one associated anecdote" do
    @chapitre.anecdotes.build
    @chapitre.should have(:no).errors_on(:anecdote)
  end

  it "should have at least one associated author" do
    @chapitre.should have_at_least(1).error_on(:anecdote)
  end

end


end
