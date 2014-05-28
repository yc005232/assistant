require 'spec_helper'

describe Personne do
  before do
	@personne=Personne.new(nom:"Example Personne")
  end

  subject {@personne}
  
  it {should respond_to(:nom)} 
  it { should have_and_belong_to_many(:scenes) }
  it {should be_valid}

  describe "when name is not present" do
     before {@personne.nom=" "}
     it {should_not be_valid}
  end
  describe "when name is already took" do
     before {pers=Personne.new(nom:"Example Personne")
      pers.save}
     it {should_not be_valid}
  end
  describe "when name is too long" do
     before { @personne.nom = "a" * 51 }
     it { should_not be_valid }
  end
end
