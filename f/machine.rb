class Machine
  attr_accessor :states, :events
	attr_reader :state

  def initialize(states)
	  @states = states
		@state = @states[0]
  end

	def trigger(event)
	  @state = :checking_out
	end	
end
