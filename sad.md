## 1. Introduction

### 1.1 Purpose
This document provides a comprehensive architectural overview of the system, using a number of different
architectural views to depict different aspects of the system. It is intended to capture and convey the
significant architectural decisions which have been made on the system.

### 1.2 Scope
This SAD describes the software architecture of the Wizards vs. Robots (short: WvR) project.
Illustrated are the Use Cases and MVC structure. Technical limitations that prevent us from
doing conventional operations (e.g. interface testing) are explained.

### 1.3 Definitions, Acronyms and Abbreviations
| Abbreviations |     Description   |
|---------------|-------------------|
| WvR           | Wizards vs. Robots|

### 1.4 References
|   Title   |   Date   |    Link    |
|-----------|----------|------------|
| Blog      |  05.10.2021 | https://4kills.wordpress.com/2021/10/05/wizards-vs-robots/ |
| GitHub    | 12.10.2021 | https://github.com/Wizards-vs-Robots |
| SRS       | 02.11.2021 | https://github.com/Wizards-vs-Robots/documentation/blob/main/srs.md |

### 1.5 Overview
This document contains the Architectural Representation, Goals and Constraints as well as the Logical, Deployment and Implementation Views.

## 2. Architectural Representation
Our implementations follow a modified MVC pattern. In general, it looks like this:
![MVC](https://upload.wikimedia.org/wikipedia/commons/a/a0/MVC-Process.svg)

## 3. Architectural Goals and Constraints
Using Unity as a game engine allows for making use of a lively community and very good documentation.
Furthermore, the product can be shipped to all consumer platforms. However, Unity does take care of [many things](https://4kills.wordpress.com/2021/11/16/what-a-rider/)
like rendering. This, combined with the fact, that we do not need a database, makes it rather difficult to construct the product
using MVC, because it is not needed for the game to work and because Unity's philosophy is not oriented towards this implementation scheme.

Due to different styles and patterns in [different languages](https://de.wikipedia.org/wiki/Model_View_Controller), it might be cumbersome or nearly impossible to
stick to the historical MVC pattern - hence, there is no firmly-defined standard. It is allowed to merge
the controller and model, but keep it separated from the view under all circumstances.
</br>

In order to reduce boilerplate and improve comprehensability, we decided to merge controllers and models.
We classified each combination of controller and model that has to do with classical inheritance as model since they mostly and inherit data.
All combinations having to do with general logic, like movement or wave management, are classified as controller.

## 4. Use-Case
This is the use case diagram covering our implementation plans for both semesters.
Elements contained within yellow circles are set to be implemented in the first semester,
the ones contained within green circles must be done until the end of the second one:
![UCD](https://github.com/Wizards-vs-Robots/documentation/blob/main/ucd.svg)

### 4.1 Use-Case Realizations
Example: Showing Game Information (specifically: Health)
![Overlay](https://github.com/Wizards-vs-Robots/documentation/blob/main/res/ShowGameInformation.png)

As a prime example for using MVC, the game overlay is to be mentioned. </br>
(a) The visual component (health bar) is represented by its View component [HealthView](https://github.com/Wizards-vs-Robots/wvr/blob/dev/Assets/Scripts/HealthView.cs). </br>
(b) The Model (+Controller) component is [HealthModel](https://github.com/Wizards-vs-Robots/wvr/blob/dev/Assets/Scripts/HealthModel.cs).
It is responsible for reducing/incrementing </br> the health and dispatching the rendering to the respective View component.
This component is the interface to the health bar. </br>

**Note**: We merged the Model and Controller component. This makes sense in this situation, because
we don't have a database, we want to abstract away, we just have some fields to be stored in a structure.
Separating both would case massive boilerplate and make the code incomprehensive. </br>

This separation allows for keeping the logic in one place (HealthModel) and
handling rendering logic in another (HealthView). One could easily switch
the rendering component, leading to different visual representations without
having to modify core logic behind it.
