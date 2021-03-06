require 'spec_helper'

describe Chapitre do
 before do
	@chapitre=Chapitre.new(numero: 0 ,titre: "Example Chapitre")
  
  end

  subject {@chapitre}
  
  it {should respond_to(:numero)} 
  it {should respond_to(:titre)} 
  it {should respond_to(:anecdotes)}
  it {should respond_to(:scenes)}  

  it {should be_valid}

  describe "when titre is not present" do
     before {@chapitre.titre=" "}
     it {should_not be_valid}
  end

  describe "when the number is already took" do
     before {chap=Chapitre.new(numero: 0,titre:"Second Chapitre")
      chap.save}
     it {should_not be_valid}
  end

  describe "when number isn't an integer" do
     before { @chapitre.numero = "a" }
     it { should_not be_valid }
  end
end
