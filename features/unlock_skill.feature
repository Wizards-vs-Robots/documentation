Feature: Unlock skill

  Scenario: Standart
    Given game state is active (no pause screen)
    When  I reach a certain Score
    Then  a new skill is unlocked
