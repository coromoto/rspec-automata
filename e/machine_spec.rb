require  'machine'

describe Machine do
  before :each do
    @machine = Machine.new([:shopping, :checking_out])
    @machine.events = {
		  :checkout => {:from => :shoping, :to => :checking_out}
    }
  end

  it "should initially have a state of the first state" do
    @machine.state.should == :shopping
  end


  it "should remember a list of valid states" do
    @machine.states.should == [:shopping, :checking_out]
  end

  it "should remember a list of events with transitions" do
    @machine.events.should == {:checkout => {:from => :shoping, :to => :checking_out}}
  end
end
