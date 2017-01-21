require 'spec_helper'

describe TimeTaken  do
	it 'should return 0 if no block given' do
		time_taken = TimeTaken.time_taken
		expect(time_taken).to   eq(0)
	end

	it 'should return 0 if invalid format is specified' do
		time_taken = TimeTaken.time_taken(:micro_seconds)
		expect(time_taken).to   eq(0)
	end

	it 'should return non zero for valid inputs' do
		time_taken = TimeTaken.time_taken{ puts 'polo' }
		expect(time_taken).not_to   eq(0)
		time_take_in_seconds = TimeTaken.time_taken(:seconds){ puts 'polo' }
		expect(time_taken).not_to   eq(0)
	end
end