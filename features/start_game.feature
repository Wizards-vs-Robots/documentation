Feature: Starting Game

  Scenario: [Name: X] no game running
    Given player in [Main Menu] or [Pause Menu]
    When  I press the "New Game" button
    And   no game instance is running
    Then  follow [Scenario Z]

  Scenario: [Name: Y] game running
    Given player in [Main Menu] or [Pause Menu]
    When  I press the "New Game" button
    And   there is a running game instance
    Then  I see "confirmation dialog"
    And   follow [Scenario Z]

  Scenario: [Name: Z] confirmation
    Given I see the "confirmation dialog"
    When  I accept the "confirmation dialog"
    Then  current score is stored in highscore table
    And   game instance is finished
    And   follow [Scenario A]

  Scenario: [Name: A] starting game
    Given new game is started
    Then  robots are spawned and set to initial state
    And   wizard(s) is/are spawned and set to initial state
    And   score is set to initial state
    And   I am shown existing maps
    And   follow [Scenario B]

  Scenario: [Name: B] configure
    When  I chose a preferred map
    Then  I am shown the settings screen
    When  I chose preferred settings
    Then  game settings are stored
    And   game is started
    And   I am shown respective map
