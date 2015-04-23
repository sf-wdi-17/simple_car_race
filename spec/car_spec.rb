require 'spec_helper'

RSpec.describe Car do
	describe '#initialize' do
		it 'has a default speed of 0' do
			car = Car.new
			expect(car.speed).to eq 0
		end
	end

	it 'can accelerate' do
		car = Car.new

		expect {
			car.accelerate(20)
		}.to change(car, :speed).by(20)
	end
end
