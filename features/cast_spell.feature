Feature: Cast Spell

  Scenario: Enough Mana
    Given game state is active (no pause screen)
    When  I press "cast spell" button
    And   I have enough mana
    Then  magic ball is generated
    And   this object is registered in handler
    And   mana is reduces

  Scenario: Not Enough Mana
    Given game state is active (no pause screen)
    When  I press "cast spell" button
    And   I don't have enough mana
    Then  do nothing