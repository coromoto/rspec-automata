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

	it "should transition to :checking_out upon #trigger(:checkout) event " do
	  @machine.trigger(:checkout)
		@machine.state.should == :checking_out
	end

	it "should transition to :success upon #trigger(:accept_card) event " do
    @machine.events = {
		  :checkout => {:from => :shoping, :to => :checking_out},
		  :accept_card => {:from => :checking_out, :to => :success}
    }
	  @machine.trigger(:checkout)
		@machine.state.should == :checking_out
	  @machine.trigger(:accept_card)
		@machine.state.should == :success
	end
end
