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
end
