require 'spec_helper'

RSpec.describe Race do
	describe '#initialize' do
		it 'has a cars array with two cars in it' do
			race = Race.new
			expect(race.cars.length).to eq 2
		end

		it 'accelerates the cars to random speeds' do
			race = Race.new
			expect(race.cars.first.speed).to be > 0
			expect(race.cars.last.speed).to be > 0
		end
	end

	describe '#winner' do
		it 'returns the winning car' do
			race = Race.new
			expect(race.winner).to be_a Car
		end

		it 'really is the winner' do
			race = Race.new
			expect(race.winner.speed).to be > race.loser.speed
		end
	end

	describe '#loser' do
		it 'return the losing car' do
			race = Race.new
			expect(race.loser).to be_a Car
		end
	end
end
