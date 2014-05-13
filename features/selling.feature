Feature: Selling

	Scenario Outline: Reduce the stock when selling articles
		Given the article <article> exists <stockBefore> times
		When the shop sells <amount>
		Then the stock should be <stockAfter>

		Examples:
			|article  | amount | stockBefore  | stockAfter |
			|"Banana" | 1      | 5			  		| 4				   |
			|"Juice"  | 5      | 5			  		|	0          |

	Scenario: Print an error message when there are not enough articles
		Given the article "Cucumber" exists 10 times
		When the shop sells 11
		Then I should get a negative feedback
		And the article "Cucumber" exists 10 times
