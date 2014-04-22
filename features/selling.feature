Feature: Selling

	Scenario Outline: Reduce the stock when selling articles
		Given the article <article>
		Given the article exists <stock> times
		When the shop sells <amount>
		Then the stock should be <stock>

		Examples:
			|article  | amount | stock  |
			|"Banana" | 1      | 3		|
			|"Bread"  | 2      | 2		|
			|"Juice"  | 3      | 1		|

	Scenario Outline: Do nothing when there are not enough articles
		Given the article <article>
		When the shop sells <amount>
		Then the stock should be <stock>

		Examples:
			|article  | amount | stock  |
			|"Banana" | 10     | 5		|
			|"Bread"  | 20     | 5		|
			|"Juice"  | 30     | 5		|
