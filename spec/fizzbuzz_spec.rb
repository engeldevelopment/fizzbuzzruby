require 'spec_helper'

module Kata::FizzBuzz::Core
	RSpec.describe FizzBuzzCalculator do
		before :each do
			@fizzbuzz = FizzBuzzCalculator.init
		end

		context 'cuando paso algo que no es un número' do
			it 'debería dar error' do
				expect {
					@fizzbuzz.value nil
				}.to raise_error(FizzBuzzCalculator::ThisIsNotANumber)

				expect {
					@fizzbuzz.value ""
				}.to raise_error(FizzBuzzCalculator::ThisIsNotANumber)

				expect {
					@fizzbuzz.value :value
				}.to raise_error(FizzBuzzCalculator::ThisIsNotANumber)
			end
		end

		context 'cuando el número divisible entre 3' do
			it 'debería dar fizz' do
				expect(@fizzbuzz.value(9)).to eq "fizz"
				expect(@fizzbuzz.value(3)).to eq "fizz"
			end
		end

		context 'cuando el número divisible entre 5' do
			it 'debería dar buzz' do
				expect(@fizzbuzz.value(5)).to eq "buzz"
				expect(@fizzbuzz.value(10)).to eq "buzz"
			end
		end

		context 'cuando el número divisible entre 3 y 5' do
			it 'debería dar fizzbuzz' do
				expect(@fizzbuzz.value(15)).to eq "fizzbuzz"
				expect(@fizzbuzz.value(30)).to eq "fizzbuzz"
			end
		end

		context 'cuando el número no es divisible entre 3 y 5' do
			it 'debería darme el número' do
				expect(@fizzbuzz.value(1)).to eq "1"
				expect(@fizzbuzz.value(2)).to eq "2"
			end
		end
	end
end
