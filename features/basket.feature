Feature: Basket

Scenario: Check the price of an article in the basket
	Given I am logged in
	And   1 "Banana" is in the basket
	When  I access the basket
	Then  I should see the price for 1 "Banana"
