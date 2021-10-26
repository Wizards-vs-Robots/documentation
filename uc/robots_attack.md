# Use-Case Specification: Robots Attacking

# 1. Robots Attacking

## 1.1 Brief Description
This use case describes that the AI (embodied by robots) attacks the wizards.

## 1.2 Mockup

## 1.3 Screenshots
<INSERT IMAGE HERE>

# 2. Flow of Events

## 2.1 Basic Flow
- Users klicks on "Post new session"-button
- "Post-Session"-template pops up
- User fills in template
- User klicks on "finish"-button
- Session gets posted

### Activity Diagram
![Activity Diagram](../activity_diagrams/robots_attack.svg)

### .feature File

## 2.2 Alternative Flows
n/a

# 3. Special Requirements
n/a

# 4. Preconditions
The preconditions for this use case are:
1. The wave has started and the robots.
2. The attacking robot has been spawned.
3. There are living possible targets.

# 5. Postconditions
The postconditions for this use case are:
1. A robot is taking the optimal route to the targeted (depending on the robot class: low vitals or nearest) wizard.
2. The target has been attacked if the robot was near enough.
3. The AI has used all robots.
