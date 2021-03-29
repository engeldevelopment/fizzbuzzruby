module Kata
	module FizzBuzz
		module Core
			class FizzBuzzCalculator
				ThisIsNotANumber = Class.new(TypeError)
				def self.init
					new
				end

				def value(number)
					only_number = VO::OnlyNumber.with value: number
					if is_fizz_buzz only_number.value
						return "fizzbuzz"
					elsif is_buzz only_number.value
						return "buzz"
					elsif is_fizz only_number.value
						return "fizz"
					else
						return only_number.value.to_s
					end
				end

				private
					def is_fizz_buzz(number)
						is_fizz(number) and is_buzz(number)
					end

					def is_buzz(number)
						number % 5 == 0
					end

					def is_fizz(number)
						number % 3 == 0
					end
			end

			module VO
				class OnlyNumber
					attr_reader :value

					def self.with(value:)
						raise_error_if_is_not_a_number value
						new(value: value)
					end

					private
						def initialize(value:)
							@value = value
						end

						def self.raise_error_if_is_not_a_number(value)
							only_number = /\d/
							unless only_number.match? value.to_s
								raise FizzBuzzCalculator::ThisIsNotANumber
							end
						end
				end
			end
		end
	end
end
