require	'machine'

  describe Machine do
  before :each do
	  @machine = Machine.new
  end

	it "should initially have a state of :initial" do
	  @machine.state.should == :initial
	end
end
