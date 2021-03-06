Feature: Buying

  Scenario Outline: Increase the stock when buying articles
    Given the article <article> exists <stockBefore> times
    When the shop buys <amount>
    Then the stock should be <stockAfter>

    Examples:
      |article    | amount | stockBefore  | stockAfter |
      |"Cucumber" | 10     | 0            | 10         |
      |"Banana"   | 50     | 5            | 55         |
