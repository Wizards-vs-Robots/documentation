Feature: Inspect progression window

  Scenario: Standart
    Given game state is active (no pause screen)
    When  I walk into the skill tavern
    Then  the progression window opens
    And   I can see unlockable skills
