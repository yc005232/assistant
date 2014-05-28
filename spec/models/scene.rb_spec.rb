require 'spec_helper'

describe Scene do
  let(:chapitre) { FactoryGirl.create(:chapitre) }
  before { @scene = chapitre.scenes.build(recit:"Example recit",lieu: "Example lieu",instant:"Example instant",chapitre_id: 0) }

  subject { @scene }

  it { should respond_to(:lieu) }
  it { should respond_to(:instant) }
  it { should respond_to(:recit) }
  it { should respond_to(:chapitre_id) }
  it { should respond_to(:chapitre) }
  its(:chapitre) { should eq chapitre }

  it { should be_valid }

  describe "when instant is not present" do
     before {@scene.instant=" "}
     it {should_not be_valid}
  end
  describe "when the id of the chapitre isn't an integer" do
     before { @scene.chapitre_id = "a" }
     it { should_not be_valid }
  end

  
end