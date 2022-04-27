# Use-Case Specification: Unlock skills

# 1.Unlock different skills

## 1.1 Brief Description
This use case describes that different skills can be unlocked.

## 1.2 Mockup
 n/a

## 1.3 Screenshots



# 2. Flow of Events

## 2.1 Basic Flow

When progressing in the game, different skills can be unlocked using score points. That happens automatically. Skills included are a dash and teleportation.

### Activity Diagram
![Activity Diagram](../activity_diagrams/.svg)

### .feature File
[Cast Spell](../features/.feature)

## 2.2 Alternative Flows
n/a

# 3. Special Requirements
n/a

# 4. Preconditions
The preconditions for this use case are:
1. The game is in a running state
2. A certain score is reached

# 5. Postconditions
The postconditions for this use case are:
1. The player can use the unlocked skill with the binded key
2. The player still has all score points, but is no longer able to unlock something with those specific ones
