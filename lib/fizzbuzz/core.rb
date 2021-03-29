module Kata
	module FizzBuzz
		module Core
			class FizzBuzzCalculator
				def self.init
					new
				end

				def value(number)
					if is_fizz_buzz number
						return "fizzbuzz"
					elsif is_buzz number
						return "buzz"
					elsif is_fizz number
						return "fizz"
					else
						return number.to_s
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
		end
	end
end
