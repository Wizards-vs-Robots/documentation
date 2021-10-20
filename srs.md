# Wizards vs. Robots - Software Requirements Specification 

## Table of contents
- [Table of contents](#table-of-contents)
- [Introduction](#1-introduction)
    - [Purpose](#11-purpose)
    - [Scope](#12-scope)
    - [Definitions, Acronyms and Abbreviations](#13-definitions-acronyms-and-abbreviations)
    - [References](#14-references)
    - [Overview](#15-overview)
- [Overall Description](#2-overall-description)
    - [Vision](#21-vision)
    - [Use Case Diagram](#22-use-case-diagram)
	- [Technology Stack](#23-technology-stack)
- [Specific Requirements](#3-specific-requirements)
    - [Functionality](#31-functionality)
    - [Usability](#32-usability)
    - [Reliability](#33-reliability)
    - [Performance](#34-performance)
    - [Supportability](#35-supportability)
    - [Design Constraints](#36-design-constraints)
    - [Online User Documentation and Help System Requirements](#37-on-line-user-documentation-and-help-system-requirements)
    - [Purchased Components](#purchased-components)
    - [Interfaces](#39-interfaces)
    - [Licensing Requirements](#310-licensing-requirements)
    - [Legal, Copyright And Other Notices](#311-legal-copyright-and-other-notices)
    - [Applicable Standards](#312-applicable-standards)
- [Supporting Information](#4-supporting-information)

## 1. Introduction

### 1.1 Purpose
This Software Requirements Specification (SRS) describes all specifications for the video game _Wizards vs. Robots_. It includes an overview of this project, its vision and detailed information about the planned features and boundary conditions of the development process.


### 1.2 Scope
The project is going to be realized primarily as a desktop game with ports to handhelds such as phones and tablets with operating system support for Linux, Windows and Darwin based operating systems.  
  
Actors of this game can be _players_ or _coop players_. Here, _coop player_ is merely another _player_ depicted differently in the UCD in order to emphasize different acting on the system once multiple players are involved in a game. When referred to _player_, _coop player_ is usually included unless otherwise stated.
  
Planned subsystems: 
* Menu:  
The _menu_ constitutes the main entry point of the game and allows for setting preferences (_settings_), viewing performance in previous games (_highscores_) and starting a new game. Starting a game allows for adjusting _optional settings_ for this round of the game. 
* Level design:  
The _level design_ system allows for different playable maps for the _player_. These maps can be optionally chosen after starting a game. (See _1.2 Scope > Menu_ for more details). _Level design_ also refers to the system required to add new maps to the game.
* In-game overlay:  
The _in-game overlay_ system provides the _player_ with a wealth of essential information (such as health [hit points] of the player or Mana [points required for casting spells]) for making decisions in the game. It also provides a pause or exit option by calling the _menu_ (as described in _1.2 Scope > Menu_).
* Robots:  
_Robots_ are the adversaries of the wizards (see _1.2 Scope > Wizard_) in the game. The _player_ tries to fight these using the _wizard_ sub-system. The _robots_ sub-system consists of many individual robot instances. Each robot belongs to a certain class of robots with certain properties and rewards for defeating them. The robots can move freely throughout the map (see _1.2 Scope > Level design_) and target the wizards and try to harm them in some way. This sub-system is also responsible for making the robots collectively harder to fight, as the player progresses.
* Wizard:  
_Wizards_ represent the _player_ in the game. Each _player_ is represented by exactly one wizard. Wizards can - controlled by the player - move around freely in the environment specified by the map (see _1.2 Scope > Level design_). Wizards can cast and dynamically switch between spells in an effort to fight robots using Mana (see _1.2 Scope > In-game overlay_ for more info regarding Mana). Wizards can also have different looks (skins). 
* Player progression system:  
The _player progression system_ is responsible for making the wizards of the players stronger, whereas the robots sub-system makes the robots progressively stronger. This system makes it possible to strike a balance and allow the player's wizard to keep up with the robots. To this end, spells and skills are unlocked using a currency obtained by defeating robots (See _1.2 Scope > Robots -> Robot classes and rewards_). The player can track the progression displayed by this system.
* Multiplayer:  
The _multiplayer_ sub-system allows for another _player_ (a _coop player_) to join in on the game of a _player_ and control their own wizard. This way, multiple players' wizards can fight robots together, which also means that the robots will be stronger than in a single player round to account for the additional wizard. The multiplayer will be possible as a same-machine multiplayer (i.e. two players playing on the same computer with their own inputs) and as an online multiplayer with multiple devices. 


### 1.3 Definitions, Acronyms and Abbreviations
| Abbreviation | Explanation                            |
| ------------ | -------------------------------------- |
| HP           | Health Points                          |
| MP           | Mana Points                            |
| EXP, XP      | Experience Points                      | 
| SRS          | Software Requirements Specification    |
| UC           | Use Case                               |
| n/a          | not applicable                         |
| tbd          | to be determined                       |
| UCD          | overall Use Case Diagram               |
| FAQ          | Frequently asked Questions             |

* Mana: Resource needed to cast spells. Quantifiable through MP. 
* Health: Indicator for the physical condition of an entity (robot or wizard). Quantifiable through HP. If HP drops to 0, the entity is defeated.

### 1.4 References

| Title                                                              | Date       | Publishing organization   |
| -------------------------------------------------------------------|:----------:| ------------------------- |
| [Wizards vs. Robots Blog](https://4kills.wordpress.com/)           | 20.10.2021 | Wizards vs. Robots Team   |
| [GitHub](https://github.com/Wizards-vs-Robots)                     | 20.10.2021 | Wizards vs. Robots Team   |
| [YouTrack](https://dhbw-karlsruhe.myjetbrains.com/youtrack/projects/543ba1b3-c283-44c7-b884-c7a436f66079) | 20.10.2021 | Wizards vs. Robots Team |


### 1.5 Overview
The following chapter provides an overview of this project with vision and OUCD (Overall Use Case Diagram). The third chapter (Requirements Specification) delivers more details about the specific requirements in terms of functionality, usability and design parameters. Lastly, there is a chapter with supporting information. 
    
## 2. Overall Description

### 2.1 Vision
Please refer to [our first blog entry](https://4kills.wordpress.com/2021/10/05/wizards-vs-robots/) for information on our vision for this product. 

### 2.2 Use Case Diagram

![OUCD](./ucd.svg)

- Green: Planned till end of December 2021
- Yellow: Planned till end of June 2022

### 2.3 Technology Stack
The technology we use is:

Backend:
-Go
-Database (type and specific DB tbd)
-Docker, DockerCompose

Frontend:
-Unity

IDE:
-JetBrain's Rider, Unity

Project Management:
-YouTrack
-GitHub
-Discord

Deployment:
-CD with Github Actions
-Docker, DockerCompose

Testing:
-C# Unit Testing Framework
-Go Unit Testing Framework
-CI with Github Actions

## 3. Specific Requirements

### 3.1 Functionality
In this section, our different use cases are explained. A structured representation can be found in the previous section.
For this project, we plan to implement the following:
- 3.1 a) Menu
- 3.1 b) In-Game Overlay
- 3.1 c) Level Design
- 3.1 d) Robots
- 3.1 e) Wizards
- 3.1 f) Player Progression System
- 3.1 g) Multiplayer

However, some of these aspects have parts that are not included in the scope
until December of this year, or June of next year, respectively. Hence, each aspect will be described along with
the respective scopes.

#### 3.1 a) Menu
To keep things simple, at first the player will only be given the possibility to
start a singleplayer game (1st semester). In the following semester, local highscores
and settings shall also be inspectible from the menu. Last but not least, as an
additional feature, the player should also be able to start multiplayer games.

#### 3.1 b) In-Game Overlay
The player must be able to see his score, health (HP) and Mana (MP) in order to make decisions. Additionally, it should be possible to go the the _menu_ at any time. This is a core feature included in the scope for December.

#### 3.1 c) Level Design
Levels should also have different styles (i.e. different layouts/maps), but this is an additional feature.

#### 3.1 d) Robots
The robots are the adversaries in this game, which must be defeated. In order to make the game more
engaging, there will be different robot classes with different defining attributes (1st semester).
Rewarding the player and making the game progressively harder is on the agenda for the second part of
the project (2nd semester). Defeating different robots should yield different interesting rewards (buffs or
items) to help defeat the strenghening enemy party (2nd semester). Making the enemy waves more and more difficult
makes the game more engaging. Additionally, we want fancily animated robots (additional feature).

#### 3.1 e) Wizard
The game's protagonists are wizards. They defeat the robots using their spells and magic. Hence,
the player character must be able to be moved in a simple manner and to cast spells (1st semester).
In order to help fighting the progressivly stronger waves, the wizard will be equipped with more diverse
spells, which all have different aspects (2nd semester). Lastly, in addition, also the wizard
shall be fancily animated and it should be possible to have different skins for them.

#### 3.1 f) Player Progression System
At first, the game should work in a basic manner. Therefore, the progression system will be part of the
development in the second semester. There will be a skill tree, which gives an overview of what skills
are to be unlocked, what and how much has to be done to do so and which skills are alraedy usable. It
gives the game more depth. Besides, the player should be able to get a preview on the unlockable skills (additional feature).

#### 3.1 g) Multiplayer
Implementing multiplayer for games is not a trivial task. As such, it is postponed until the second semester.
At first, local multiplayer will be made possible, then online multiplayer. This will also bring more depth
to the game, since first, one can now play with others and communicate with them and second playing together
will have some inherent effects on the game like stronger waves.

### 3.2 Usability
We plan on designing the user interface as intuitive and self-explanatory as possible.
Though there will be online support, it should not be necessary to use it. Games usually
share similar controls or concepts. We want to build on this familiarity.

For accessibility, texts should be not too small and well readable. The game shouldn't rely on red to green contrasts, in order to not exclude red-green color blind people.

### 3.3 Reliability

#### 3.3.1 Availability
The multiplayer servers aim for a availability of >99%. This includes possible well-known hosts in case of peer-to-peer / community hosted multiplayer servers.

#### 3.3.2 Defect Rate
Losing data due to defects or crashes is annoying and deminishes the fun experienced with the game.
Hence, we try our best to backup the data with little overhead to preserve the game state.

### 3.4 Perfomance
The game will be pretty simple regarding graphics. Unity is a well-developed game engine, which
already handles a lot of the computation extensive and fine-grained processes and as such also
specialized on optimizing them. Performance should therefore not be a problem. Adhearing to common
procedures, when implementing multiplayer functionality for example, prevents going through the roof.
However, the game will be thoughtfully engineered, so that it only consumes the resources it really needs.

### 3.5 Supportability

#### 3.5.1 Coding Standards
Code clearness and expressiveness are important. They let one easily understand the code and
make it easier to find bugs. As a guideline, we use the Google coding conventions.

#### 3.5.2 Testing Strategy
It is important to us to have highly maintainable and high quality code.
For this, we strive for a high test coverage and use extensive testing,
on the technical, as well as on the interactive game part of the game.
Having an eye on quality helps us to save time debugging and helps to
prevent the degrading of the player experience due to bugs.
Apart from unit testing, there must also be conceptual testing, to make
sure that the game is actually fun.

### 3.6 Design Constraints
We strive for clean code and a modular design. For this, we use Google coding conventions as guidelines.
Using Unity forces us to program in C#, a language very similar to Java.

### 3.7 Online User Documentation and Help System Requirements
The controls and navigation in the game will be intuitive and close
to other well-known games. However, there will be a short documentation
explaining basic controls.

### 3.8 Purchased Components
We do not have any purchased components yet. In the course of development, we might decide
to rent servers for multiplayer functionality.

### 3.9 Interfaces

#### 3.9.1 User Interfaces
The UIs to be implemented are:
- Menu
- Game Settings
- Skill Tree

#### 3.9.2 Hardware Interfaces
(n/a)

#### 3.9.3 Software Interfaces
The game is developed using Unity. As such, it can be ported onto multiple platforms, including known
operating systems like MacOS, GNU/Linux, TempleOS and Windows, as well as to mobile devices running Android or iOS.
Additionally, it could also be run in browsers.

#### 3.9.4 Communication Interfaces (networking?)

### 3.10 Licensing Requirements (?)

### 3.11 Legal, Copyright, and Other Notices
The logo and name of "Wizards vs. Robots" are propery of its development team and as such are only
allowed to be used commercially in this context.

### 3.12 Applicable Standards
The development follows the Google coding conventions of clean code.

## 4. Supporting Information
For any further information you can contact the "Wizards vs. Robots" team or check our [Wizards vs. Robots blog](https://4kills.wordpress.com/2021/10/05/wizards-vs-robots/). 
The members are:
- Lukas Rapp
- Dominik Ochs
- Philipp Reichert
- Leon Neumann

<!-- Picture-Link definitions: -->
[OUCD]: ./ucd.svg "Overall Use Case Diagram"
