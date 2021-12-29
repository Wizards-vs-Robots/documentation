Feature: Show Hud

  Scenario: Player Health/Mana changes or accumulates Score
    Given game has been started
    When any displayed game information is changed
    Then  Hud is updated
