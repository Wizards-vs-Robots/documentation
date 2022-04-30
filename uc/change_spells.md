# Use-Case Specification: Change Spell

# 1. Change between different spells

## 1.1 Brief Description
Players need to be able to use every spell by rotating through all available spells.
## 1.2 Mockup

n/a
## 1.3 Screenshots
n/a

# 2. Flow of Events

## 2.1 Basic Flow

By pressing a specified button, the next spell gets selected. The currently selected spell gets indicated on the UI in the bottom left corner. When performing the cast_spells Usecase, a different spell will be activated with different properties.

### Activity Diagram
![Activity Diagram]()

### .feature File
n/a

## 2.2 Alternative Flows
n/a

# 3. Special Requirements
n/a

# 4. Preconditions
The preconditions for this use case are:
1. The game is in a running state.
2. At least two spells are available

# 5. Postconditions
The postconditions for this use case are:
1. The next available spell is indicated
2. When casting a spell, the newly chosen spell gets used

