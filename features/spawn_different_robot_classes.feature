Feature: Spawn Different Robot Classes
  
  Scenario: All classes can be spawned
    Given Wizard is alive
    And   a wave has to be spawned
    When  new wave starts
    Then  wait for maximum spawn delay
    Then  see generated robots
