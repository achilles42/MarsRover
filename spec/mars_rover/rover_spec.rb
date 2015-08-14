require 'spec_helper'

module MarsRover
  context 'turn left' do
    it 'should turn to left direction' do
      current_direction = "North"
      rover = Rover.new(current_direction)
      expect(rover.turn_left).to eq("West")
    end

    it 'should turn to left direction it its current direction is W' do
      current_direction = "West"
      rover = Rover.new(current_direction)
      expect(rover.turn_left).to eq("South")
    end
  end
end
