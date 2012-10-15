class Machine
  attr_accessor :states
	attr_reader :state

  def initialize(states)
	  @states = states
		@state = @states[0]
  end
end
