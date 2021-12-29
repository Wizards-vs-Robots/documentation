#This feature file in the perspective of the game that handels all the robots

Feature: Figth Wizard

  Scenario: Wizard is not in range
     Given game state is active (no pause screen)
     And a robot is still active
     When wizard is not in attack range
     Then move Robots closer along the optimal path
     And follow [Feature Figth Wizard]

  Scenario: Wizard is in range
     Given game state is active (no pause screen)
     And a robot is still active
     When wizard is in attack range
     Then attack wizard
     And follow [Scenario Hit or Miss]

   Scenario: Hit
     Given game state is active (no pause screen)
     When the attack hits 
     Then register the attack
     And change health from wizard
     And follow [Scenario Hud]
     And wait for attack cooldown
     And follow [Feature Figth Wizard] 

   Scenario: Miss
     Given game state is active (no pause screen)
     When the attack misses or wizard has a shield 
     Then wait for attack cooldown
     And follow [Feature Figth Wizard]  