# Use-Case Specification: Show Game Information (HUD)

# 1. Show Game Information (HUD)

## 1.1 Brief Description
This use case describes that the _game_ (as actor) tries to show the player the state of the game by providing them with game informtion for the player to make decisions. 
The information provided to achieve this is the HP and MP and well as the score of the player. 

## 1.2 Mockup
The first mockup shows the game HUD when the player has full HP and MP. The bottom left shows the HP and MP in percentages (red and blue respectively) 
and is additionally visualized by a red heart (HP) and a blue star (MP). They are partially filled according to the current HP/MP percentage (see mockup two for more details).
Additionally the score is displayed on the top center of the screen. 
![Mockup](../mockups/hud_full.png)

This mockup shows in essence the same HUD elements as mockup one but with a higher score and partially filled HP/MP meters. 
![Mockup](../mockups/hud_damaged.png)

## 1.3 Screenshots

# 2. Flow of Events

## 2.1 Basic Flow
The _game_ actor periodically (per game tick) triggers this use case. The system then fetches the score from the entity responsible for keeping track of the score 
(i.e. by counting the defeated robots and other score modyfing events). After that the system also fetches the current HP and MP from the player, calculates the visualization
and displays the percentages and HP/MP meters. 

### Activity Diagram
![Activity Diagram](../activity_diagrams/hud.svg)

### .feature File
[HUD Feature File](../features/hud.feature)

## 2.2 Alternative Flows
n/a

# 3. Special Requirements
n/a

# 4. Preconditions
The preconditions for this use case are:
1. The game has started.
2. The _player_ is not yet defeated.

# 5. Postconditions
The postconditions for this use case are:
1. The player's wizard's current HP and MP as well as the score the player has accumulated are displayed. 
2. Aside from 1.), this UC has not changed anything. 
