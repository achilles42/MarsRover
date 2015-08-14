require 'spec_helper'

module MarsRover
  context 'turn left' do
    it 'should turn to left direction' do
      current_direction = "North"
      rover = Rover.new(current_direction)
      expect(rover.turn_left).to eq("West")
    end
  end
end
