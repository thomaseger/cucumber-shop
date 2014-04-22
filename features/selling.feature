Feature: Selling

	Scenario Outline: Reduce the stock when selling articles
		Given the article <article>
		Given the article exists <stockBefore> times
		When the shop sells <amount>
		Then the stock should be <stockAfter>

		Examples:
			|article  | amount | stockBefore  | stockAfter |
			|"Banana" | 1      | 5			  | 4		   |
			|"Bread"  | 2      | 5			  |	3          |
			|"Juice"  | 5      | 5			  |	0          |

	Scenario Outline: Do nothing when there are not enough articles
		Given the article <article>
		Given the article exists <stockBefore> times
		When the shop sells <amount>
		Then the stock should be <stockAfter>

		Examples:
			|article  | amount | stockBefore  | stockAfter |
			|"Banana" | 10     | 5			  | 5		   |
			|"Bread"  | 20     | 5			  |	5          |
			|"Juice"  | 30     | 5			  |	5          |
