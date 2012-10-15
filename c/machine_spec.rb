require	'machine'

  describe Machine do
    before :each do
	    @machine = Machine.new
  end

  it "should initially have a state of :initial" do
    @machine.state.should == :initial
  end


  it "should remember a list of valid states" do
    @machine.states = [:shopping, :checking_out]
    @machine.states.should == [:shopping, :checking_out]
  end

end
