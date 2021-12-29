Feature: Move Wizard

  Scenario: Nothing obstructes the path
    Given game state is active (no pause screen)
    When  I press "move" button
    And   No object is in the way
    Then  Wizard is moved
    And   Position is updated

  Scenario: Object obstructs the path
    Given game state is active (no pause screen)
    When  I press "move" button
    And   An object is in the way
    Then  Wizard is not moved