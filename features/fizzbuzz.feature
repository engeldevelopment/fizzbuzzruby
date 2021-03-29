Feature: FizzBuzz Calculator
	Este kata consiste, en que dado un número cualquiera, me debería dar una respuesta.
	Las reglas son: Si el número es divisible entre 3, la respuesta será "fizz".
	Si el número es divisible entre 5, la respuesta será "buzz".
	Si el número es divisible entre 3 y 5, la respuesta será "fizzbuzz". En caso de que
	el número no sea divisible entre 3 y 5, debería devolverme el mismo número.


	Scenario Outline: FizzBazz
		Given el número <numero>
		When calcule su valor
		Then la respuesta debería ser "<respuesta>"

		Examples: Fizz
			|numero|respuesta|
			|3     |fizz    |
			|9     |fizz    |
			|12    |fizz    |

		Examples: Bazz
			|numero|respuesta|
			|5     |buzz    |
			|10    |buzz    |

		Examples: FizzBuzz
			|numero|respuesta|
			|15    |fizzbuzz|
			|30    |fizzbuzz|

		Examples: El mismo número
			|numero|respuesta|
			|1     |1       |
			|2     |2       |
			|4     |4       |

