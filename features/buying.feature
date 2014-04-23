Feature: Buying

  Scenario Outline: Increase the stock when buying articles
    Given the article <article> exists <stockBefore> times
    When the shop buys <amount>
    Then the stock should be <stockAfter>

    Examples:
      |article    | amount | stockBefore  | stockAfter |
      |"Cucumber" | 10     | 0            | 10         |
      |"Bread"    | 20     | 5            | 25         |
      |"Juice"    | 50     | 5            | 55         |
