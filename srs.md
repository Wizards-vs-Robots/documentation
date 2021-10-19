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
  
Actors of this game can be _players_ or _coop players_.  
  
Planned subsystems: 
* Menu:  
The notice board is the essential part of the user interface. Game sessions should be visualized as postings including relevant information about the session. Those should be partly standardized by a form with a free text option for specifics. The data must be stored accordingly.
* Level design:  
Users can create accounts so sessions can be connected to a person as well as to join requests. User data must be stored alongside the posting data.
* Friend List and User Rating:  
Once the account system is created there will be the option to mark users as favorites. Also users or game sessions should get a rating to counter abuse.
* Connecting People:  
The host of a game session has to be notified when someone wants to join their game. Both must then be able to get in touch to organize the details, so messages between the host and the guest have to be enabled. This could be done via automated emails or a custom in-app system. For this an account system is needed.
* Storing Data:  
User data for accounts and possibly profiles has to be stored. Also the game sessions have to be stored as datasets containing the form contents and possibly contact data. The data storage will form the foundation for the visualization, account system and the search feature.
* Finding your Game:  
We need a tag system so everyone looking to join a game can search for the kind of games they are interested in. Possibly other aspects can be searchable, such as place or date. Tags must be stored and a search function developed. 

### 1.3 Definitions, Acronyms and Abbreviations
| Abbrevation | Explanation                            |
| ----------- | -------------------------------------- |
| SRS         | Software Requirements Specification    |
| UC          | Use Case                               |
| n/a         | not applicable                         |
| tbd         | to be determined                       |
| UCD         | overall Use Case Diagram               |
| FAQ         | Frequently asked Questions             |

### 1.4 References

| Title                                                              | Date       | Publishing organization   |
| -------------------------------------------------------------------|:----------:| ------------------------- |
| [Common Playground Blog](http://commonplayground.wordpress.com)    | 18.10.2018 | Common Playground Team    |
| [GitHub](https://github.com/nilskre/CommonPlayground)              | 18.10.2018 | Common Playground Team    |


### 1.5 Overview
The following chapter provides an overview of this project with vision and Overall Use Case Diagram. The third chapter (Requirements Specification) delivers more details about the specific requirements in terms of functionality, usability and design parameters. Finally there is a chapter with supporting information. 
    
## 2. Overall Description

### 2.1 Vision
Inspired by carpool coordination services like ‘BlaBlaCar’ or ‘Mitfahrzentrale’ we want to build an application to coordinate game sessions. We plan to create a platform for people who are looking for other people to play games with. Covering online multiplayer games, tabletop, pen and paper or regular board games we want to provide a kind of bulletin board where people can state what they want to play, when and where they want to do it and how many people they are looking for. Others can then react to the postings and virtually join the play session to be connected by us so everyone can coordinate the actual play session together on a Common Playground.

### 2.2 Use Case Diagram

![OUCD](./ucd.svg)

- Green: Planned till end of december
- Yellow: Planned till end of june

### 2.3 Technology Stack
The technology we use is:

Backend:
-Gradle and Springboot
-H2 Database

Frontend:
-Android with Java and XML

IDE:
-IntelliJ and Android Studio

Project Management:
-YouTrack
-GitHub
-Microsoft Teams

Deployment:
-Travis CI
-Docker and Heroku

Testing:
-Cucumber
-Espresso
-JUnit
-Codacy
-CodeMR
-RestAssured

## 3. Specific Requirements

### 3.1 Functionality
In this section, our different use cases are explained. A structured representation can be found in the previous section.
Until June, we plan to have the following implemented:
- 3.1a) Menu
- 3.1b) Level Design
- 3.1c) Robots
- 3.1d) Wizards
- 3.1e) Player Progression System
- 3.1f) Multiplayer

However, some of these aspects have parts that are not included in the scope
until December of this year. Hence, each aspect will be described along with
the respective scopes.

#### 3.1a) Menu
To keep things simple, at first the player will only be given the possibility to
start a singleplayer game (1st semester). In the following semester, local highscores
and settings shall also be inspectible from the menu. Last but not least, as an
additional feature, the player should also be able to start multiplayer games.

#### 3.1b) Level Design
Since this project is a game, there must be levels. The player must be able to see his
score and his health. Levels should also have different styles, but this is an additional feature.

#### 3.1c) Robots
The robots are the evil enemies in this game, which must be defeated. In order to make the game more
engaging, there will be different robot classes with different defining attributes (1st semester).
Rewarding the player and making the game progressively harder is on the agenda for the second half of
the project (2nd semester). Defeating different robots should yield different interesting buffs or
items to help defeat the strenghening enemy party. Making the enemy waves more and more difficult
makes the game more engaging. Additionally, we want smoothly animated robots (additional feature).

#### 3.1d) Wizard
The game's protagonists are wizards. They defeat the robots using their spells and magic. Hence,
the player character must be able to be moved in a simple manner and to cast spells and curses (1st semester).
In order to help fighting the progressivly stronger waves, the wizard will be equipped with more diverse
spells, which all have different aspects and tricks (2nd semester). Lastly, in addition, also the wizard
shall be smoothly animated and it should be possible to use different cosmetics on him.

#### 3.1e) Player Progression System
At first, the game should work in a basic manner. Therefore, the progression system will be part of the
development in the second semester. There will be a skill tree, which gives an overview of what skills
are to be unlocked, what and how much has to be done to do so and which skills are alraedy usable. It
gives the game more depth. Besides, the player should be able to get a preview on the unlockable skills (additional feature).

#### 3.1f) Multiplayer
Implementing multiplayer for games is not a trivial task. As such, it is postponed until the second semester.
At first, local multiplayer will be made possible, then online multiplayer. This will also bring more depth
to the game, since first, one can now play with others and communicate with them and second playing together
will have some inherent effects on the game like stronger waves.

### 3.2 Usability
We plan on designing the user interface as intuitive and self-explanatory as possible.
Though there will be online support, it should not be necessary to use it. Games usually
share similar controls or concepts. We build on this familiarity.

### 3.3 Reliability

#### 3.3.1 Availability
The multiplayer servers shall be available at any time.

#### 3.3.2 Defect Rate
Losing data due to defects or crashed is annoying and deminishes the fun experienced with the game.
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
For any further information you can contact the "Wizards vs. Robots" team or check our [Wizards vs. Robots](https://4kills.wordpress.com/2021/10/05/wizards-vs-robots/). 
The members are:
- Lukas Rapp
- Dominik Ochs
- Philipp Reichert
- Leon Neumann

<!-- Picture-Link definitions: -->
[OUCD]: https://github.com/IB-KA/CommonPlayground/blob/master/UseCaseDiagramCP.png "Overall Use Case Diagram"
