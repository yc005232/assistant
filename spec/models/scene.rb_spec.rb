require 'spec_helper'

describe Scene do
  before do
	@scene=Scene.new(recit:"Example recit",lieu: "Example lieu",instant:"Example instant",chapitre_id: 0)
  end

  subject {@scene}
  
  it {should respond_to(:instant)} 

  it {should be_valid}

  describe "when instant is not present" do
     before {@scene.instant=" "}
     it {should_not be_valid}
  end
  describe "when the id of the chapitre isn't an integer" do
     before { @scene.chapitre_id = "a" }
     it { should_not be_valid }
  end
end