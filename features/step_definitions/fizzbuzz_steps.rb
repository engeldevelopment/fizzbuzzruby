Given('el número {int}') do |value|
	@fizzbazz = Kata::FizzBuzz::Core::FizzBuzzCalculator.init
	@value = value
end

When('calcule su valor') do
	@response = @fizzbazz.value(@value)
end

Then('la respuesta debería ser {string}') do |response|
	expect(response).to eq @response
end
