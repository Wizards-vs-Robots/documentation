# Test Plan 

## Table of contents

- [1. Introduction](#1-introduction)
  * [1.1 Purpose](#11-purpose)
  * [1.2 Scope](#12-scope)
  * [1.3 Intended Audience](#13-intended-audience)
  * [1.4 Document Terminology and Acronyms](#14-document-terminology-and-acronyms)
  * [1.5  References](#15-references)
- [2. Evaluation Mission and Test Motivation](#2-evaluation-mission-and-test-motivation)
  * [2.1 Background](#21-background)
  * [2.2 Evaluation Mission](#22-evaluation-mission)
  * [2.3 Test Motivators](#23-test-motivators)
- [3. Target Test Items](#3-target-test-items)
- [4. Outline of Planned Tests](#4-outline-of-planned-tests)
  * [4.1 Outline of Test Inclusions](#41-outline-of-test-inclusions)
  * [4.2 Outline of Other Candidates for Potential Inclusion](#42-outline-of-other-candidates-for-potential-inclusion)
  * [4.3 Outline of Test Exclusions](#43-outline-of-test-exclusions)
- [5. Test Approach](#5-test-approach)
  * [5.1 Initial Test-Idea Catalogs and Other Reference Sources](#51-initial-test-idea-catalogs-and-other-reference-sources)
  * [5.2 Testing Techniques and Types](#52-testing-techniques-and-types)
    + [5.2.1 Data and Database Integrity Testing](#521-data-and-database-integrity-testing)
    + [5.2.2 Functional Testing](#522-functional-testing)
    + [5.2.3 Unit Testing](#523-unit-testing)
- [6. Entry and Exit Criteria](#6-entry-and-exit-criteria)
  * [6.1 Test Plan](#61-test-plan)
    + [6.1.1 Test Plan Entry Criteria](#611-test-plan-entry-criteria)
    + [6.1.2 Test Plan Exit Criteria](#612-test-plan-exit-criteria)
- [7. Deliverables](#7-deliverables)
- [7.1 Test Evaluation Summaries](#71-test-evaluation-summaries)
- [7.2 Reporting on Test Coverage](#72-reporting-on-test-coverage)
- [7.3 Perceived Quality Reports](#73-perceived-quality-reports)
- [7.4 Incident Logs and Change Requests](#74-incident-logs-and-change-requests)
- [7.5 Smoke Test Suite and Supporting Test Scripts](#75-smoke-test-suite-and-supporting-test-scripts)
- [7.6      Additional Work Products](#76------additional-work-products)
  * [7.6.1     Detailed Test Results](#761-----detailed-test-results)
  * [7.6.2     Additional Automated Functional Test Scripts](#762-----additional-automated-functional-test-scripts)
  * [7.6.3     Test Guidelines](#763-----test-guidelines)
  * [7.6.4     Traceability Matrices](#764-----traceability-matrices)
- [8. Testing Workflow](#8-testing-workflow)
- [9. Environmental Needs](#9-environmental-needs)
  * [9.1 Base System Hardware](#91-base-system-hardware)
  * [9.2 Base Software Elements in the Test Environment](#92-base-software-elements-in-the-test-environment)
  * [9.3 Productivity and Support Tools](#93-productivity-and-support-tools)
  * [9.4 Test Environment Configurations](#94-test-environment-configurations)
- [10. Responsibilities, Staffing, and Training Needs](#10-responsibilities--staffing--and-training-needs)
  * [10.1 People and Roles](#101-people-and-roles)
  * [10.2 Staffing and Training Needs](#102-staffing-and-training-needs)
- [11. Iteration Milestones](#11-iteration-milestones)
- [12. Risks, Dependencies, Assumptions, and Constraints](#12-risks--dependencies--assumptions--and-constraints)

## 1. Introduction

### 1.1 Purpose

The purpose of the Iteration Test Plan is to gather all of the information necessary to plan and control the test effort for a given iteration. It describes the approach to testing the software.
This Test Plan for Vaultionizer supports the following objectives:

- Identifies the items that should be targeted by the tests.
- Identifies the motivation for and ideas behind the test areas to be covered.
- Outlines the testing approach that will be used.
- Identifies the required resources and provides an estimate of the test efforts.

### 1.2 Scope

Unit testing for functionality and reliability. Focus is on the game object logic implementation. There will be no testing on utilities and functionalities provided by Unity (i.e. rendering and component system).

### 1.3 Intended Audience

This test plan contains more technically detailed information and does not provide a description of the application itself. Therefore this document is for advanced readers with the necessary background knowledge and should be used primarily by active developers of the project.

### 1.4 Document Terminology and Acronyms

| Abbr | Abbreviation                        |
|------|-------------------------------------|
| CI   | Continuous Integration              |
| n/a  | not applicable                      |
| SRS  | Software Requirements Specification |
| tbd  | to be determined                    |
| TDD  | Test Driven Development             |
| UI   | User Interface                      |

### 1.5  References

| Title                                                                   | Date       | Publishing organization   |
| ------------------------------------------------------------------------|:----------:| ------------------------- |
| [Blog](https://4kills.wordpress.com/)                                   | Apr. 2022  |                  |
| [GitHub Repository](https://github.com/Wizards-vs-Robots/documentation)                                                   | Apr. 2022|                  |
| [Use Cases](https://github.com/Wizards-vs-Robots/documentation/tree/main/uc)                                        | Apr. 2022  |                  |
| [SRS](https://github.com/Wizards-vs-Robots/documentation/blob/main/srs.md)                          | Apr. 2022  |                  |
| [SAD](https://github.com/Wizards-vs-Robots/documentation/blob/main/sad.md)                               | Apr. 2022  |                  |


## 2. Evaluation Mission and Test Motivation


### 2.1 Background

Test coverage for our project gives us the possibility to be sure that future changes will not lead to functional problems. With the integration of testing into the deployment process we can ensure that just stable versions of our project which meet the desired quality requirements are being deployed. This leads to a better control of new implementations and the deployment process.

### 2.2 Evaluation Mission

Test are necessary for providing stable and working versions of our project and to ensure that bugs or other problems can be identified as early as possible. The functionality of our methods and implementations can be verified automatically with the concept of continuous testing. With Test Driven Development (TDD) the tests are getting written before the functionality itself gets implemented. TDD helps a lot to prevent problems and bugs before they occur.

### 2.3 Test Motivators

Quality as well as stability and functional risks motivated us to use testing for this project. To ensure our application and its functions fulfill the requirements, it is very important to test these. Additionally, it helps implementing the Use Cases with a correct working result.

## 3. Target Test Items

In the following list the tested parts of our application are listed. Tests will cover the main backend functionality as well as the logical implementations in the QML UI part.

Tested parts:
- Wave System
- Cooldowns
- Mathematical components
- Serialization/Deserialization

## 4. Outline of Planned Tests


### 4.1 Outline of Test Inclusions

All mentioned test targets will be tested with unit tests.

The tests themselves are not going to be tested and will not be part of the calculation of code coverage.

### 4.2 Outline of Other Candidates for Potential Inclusion

User interface testing would be an additional option to provide a working application. Furthermore performance testing of the application might be an interesting part of quality management to ensure a stable application that fulfills the performance requirements.

### 4.3 Outline of Test Exclusions

Testing the interface in Unity is quite a challenge because it cannot be tested with conventional interface testing technologies such as Selenium, due to no DOM tree. Performance testing is unlikely to prove effective due to many performance affecting parameters being out of our influence.


## 5. Test Approach


### 5.1 Initial Test-Idea Catalogs and Other Reference Sources


### 5.2 Testing Techniques and Types

#### 5.2.1 Data and Database Integrity Testing

[The databases and the database processes should be tested as an independent subsystem. This testing should test the subsystems without the target-of-test's User Interface as the interface to the data. Additional research into the DataBase Management System (DBMS) needs to be performed to identify the tools and techniques that may exist to support the testing identified in the following table.]

|                        | Description                         | 
|------------------------|-------------------------------------|
| Technique Objective    | Ensure that the implemented functions are working as expected. |
| Technique              | Implement QTests and Qt Quick tests |
| Oracles                | Test Logs, console printings and code coverage calculations |
| Required Tools         | QtCreator |
| Success Criteria       | All tests pass and the required code coverage is given |
||[TravisCI](https://travis-ci.org/VisualRacing/VisualRacing) and [Appveyor](https://ci.appveyor.com/project/ChristopherKlammt/visualracing) build pass and all tests run green|
| Special Considerations | - |

#### 5.2.2 Functional Testing

[Function testing of the target-of-test should focus on any requirements for test that can be traced directly to use cases or business functions and business rules. The goals of these tests are to verify proper data acceptance, processing, and retrieval, and the appropriate implementation of the business rules. This type of testing is based upon black box techniques; that is, verifying the application and its internal processes by interacting with the application via the Graphical User Interface (GUI) and analyzing the output or results. The following table identifies an outline of the testing recommended for each application.]

|                        | Description                         | 
|------------------------|-------------------------------------|
| Technique Objective    | Ensure that the implemented functions are working as expected. |
| Technique              | Implement QTests and Qt Quick tests |
| Oracles                | Test Logs, console printings and code coverage calculations |
| Required Tools         | QtCreator |
| Success Criteria       | All tests pass and the required code coverage is given |
||[TravisCI](https://travis-ci.org/VisualRacing/VisualRacing) and [Appveyor](https://ci.appveyor.com/project/ChristopherKlammt/visualracing) build pass and all tests run green|
| Special Considerations | - |

#### 5.2.3 Unit Testing
The concept of unit testing is to structure the code into pieces that are as small as possible. These units are going to be tested individually to check the functionality on the lowest possible level. Due to this partitioning of the implementation, bugs and problems can be found rather easily. If the granular functionalities have been approved, the units can be put together to modules, which then will be tested on this higher level. Unit Testing has proven to be a good way to find bugs and problems in software early and reliable.

For unit testing QTest and Qt Quick Test are used in this project.

|                        | Description                         | 
|------------------------|-------------------------------------|
| Technique Objective    | Ensure that the implemented functions are working as expected. |
| Technique              | Implement QTests and Qt Quick tests |
| Oracles                | Test Logs, console printings and code coverage calculations |
| Required Tools         | QtCreator |
| Success Criteria       | All tests pass and the required code coverage is given |
||[TravisCI](https://travis-ci.org/VisualRacing/VisualRacing) and [Appveyor](https://ci.appveyor.com/project/ChristopherKlammt/visualracing) build pass and all tests run green|
| Special Considerations | - |



## 6. Entry and Exit Criteria

### 6.1 Test Plan

#### 6.1.1 Test Plan Entry Criteria

The process of testing is to be executed when a new version of the application was committed and built on the main Branch on the GitHub Repository.

#### 6.1.2 Test Plan Exit Criteria

The process of testing leads to a passing of all tests without errors.


## 7. Deliverables

## 7.1 Test Evaluation Summaries

n/a

## 7.2 Reporting on Test Coverage

[Provide a brief outline of both the form and content of the reports used to measure the extent of testing, and indicate how frequently they will be produced. Give an dication as to the method and tools used to record, measure, and report on the extent of testing.]

## 7.3 Perceived Quality Reports

n/a

## 7.4 Incident Logs and Change Requests

[Provide a brief outline of both the method and tools used to record, track, and manage test incidents, associated change requests, and their status.]

## 7.5 Smoke Test Suite and Supporting Test Scripts

n/a

## 7.6      Additional Work Products
n/a

### 7.6.1     Detailed Test Results
n/a

### 7.6.2     Additional Automated Functional Test Scripts
[These will be either a collection of the source code files for automated test scripts, or the repository of both source code and compiled executables for test scripts maintained by the test automation product.]

### 7.6.3     Test Guidelines
n/a

### 7.6.4     Traceability Matrices
n/a



## 8. Testing Workflow

[Provide an outline of the workflow to be followed by the test team in the development and execution of this Test Plan.
The specific testing workflow that you will use should be documented separately in the project's Development Case. It should explain how the project has customized the base RUP test workflow (typically on a phase-by-phase basis). In most cases, we recommend you place a reference in this section of the Test Plan to the relevant section of the Development Case. It might be both useful and sufficient to simply include a diagram or image depicting your test workflow.
More specific details of the individual testing tasks are defined in a number of different ways, depending on project culture; for example:
* defined as a list of tasks in this section of the Test Plan, or in an accompanying appendix
* defined in a central project schedule (often in a scheduling tool such as Microsoft Project)
* documented in individual, "dynamic" to-do lists for each team member, which are usually too detailed to be placed in the Test Plan
* documented on a centrally located whiteboard and updated dynamically
* not formally documented at all
Based on your project culture, you should either list your specific testing tasks here or provide some descriptive text explaining the process your team uses to handle detailed task planning and provide a reference to where the details are stored, if appropriate.
For Master Test Plans, we recommend avoiding detailed task planning, which is often an unproductive effort if done as a front-loaded activity at the beginning of the project. A Master Test Plan might usefully describe the phases and the number of iterations, and give an indication of what types of testing are generally planned for each Phase or Iteration.
Note: Where process and detailed planning information is recorded centrally and separately from this Test Plan, you will have to manage the issues that will arise from having duplicate copies of the same information. To avoid team members referencing out-of-date information, we suggest that in this situation you place the minimum amount of process and planning information within the Test Plan to make ongoing maintenance easier and simply reference the "Master" source material.]

## 9. Environmental Needs

### 9.1 Base System Hardware

For testing the build status no specific hardware is required.

### 9.2 Base Software Elements in the Test Environment

The following base software elements are required in the test environment for this Test Plan.


| Software Element Name |  Type and Other Notes                        |
|-----------------------|----------------------------------------------|
| Android Studio        | Test Runner / IDE                            |
| IntelliJ              | Test Runner / IDE                            |
| JUnit 4               | Unit testing library                         |
| Espresso              | UI testing library                           |
| Cucumber              | human readable test definitions              |


### 9.3 Productivity and Support Tools

The following tools will be employed to support the test process for this Test Plan.

| Tool Category or Type             | Tool Brand Name | Vendor or In-house | Version |
|-----------------------------------|-----------------|--------------------|---------|
| Test Management                   |                 |                    |         |
| Defect Tracking                   |                 |                    |         |
| ASQ Tool for functional testing   |                 |                    |         |
| ASQ Tool for performance testing  |                 |                    |         |
| Test Coverate Monitor or Profiler |                 |                    |         |
| Project Management                |                 |                    |         |
| DBMS tools                        |                 |                    |         |

### 9.4 Test Environment Configurations

The following Test Environment Configurations need to be provided and supported for this project.

| Configuration Name                | Description | Implemented in Physical Configuration |
|-----------------------------------|-------------|---------------------------------------|
| Average user configuration        |             |                                       |
| Minimal configuration supported   |             |                                       |
| Visually and mobility challenged  |             |                                       |
| International Double Byte OS      |             |                                       |
| Network installation (not client) |             |                                       |

## 10. Responsibilities, Staffing, and Training Needs

### 10.1 People and Roles

This table shows the staffing assumptions for the test effort.

| Human Resources  |  Minimum Resources Recommended  |  Specific Responsbilities or comments  |
|--------|--------------|-------------------|      
|Test Manager|1|Ensures that testing is complete and conducted for the right motivators|                                             
| Test Analyst| 1 | Analyses what to test  |
| Tester  |  4   | Implements and executes the tests.     |


### 10.2 Staffing and Training Needs

n/a

## 11. Iteration Milestones

We want to keep over 50% code coverage.

## 12. Risks, Dependencies, Assumptions, and Constraints

Risks regarding the integration of new Unit Tests into our Test workflow will be handled by the Implementer directly.                                                                  |
