# Overview

Create a azure pipeline azure Continuous Integration and Continuous Delivery using azure piplines and github action.

## Project Plan

First to create a project plan in Trello and spreadsheet. Here is the link for both below

* A link to a Trello board for the project
https://trello.com/b/JBlYiBbd/to-do
* A link to a spreadsheet that includes the original and final project plan>
https://docs.google.com/spreadsheets/d/1YjrBt-l6RQC9xPeYgFklU0uK3osKhnzwvnNehwnNigc/edit?usp=sharing

#Azure DevOps Principles and Practices

Devops Definition

A compound of development (Dev) and operations (Ops), DevOps is the union of people, process, and technology to continually provide value to customers.
What does DevOps mean for teams? DevOps enables formerly siloed roles—development, IT operations, quality engineering, and security—to coordinate and collaborate to produce better, more reliable products. By adopting a DevOps culture along with DevOps practices and tools, teams gain the ability to better respond to customer needs, increase confidence in the applications they build, and achieve business goals faster.

DevOps practices

* Continuous integration and continuous delivery (CI/CD)
* Version Control
* Agile software development
* Infrastructure as code
* Configuration management
* Continuous monitoring




Instructions for running the Python project
A short description of how to improve the project in the future
Screenshots demonstrating key steps



## Instructions

<TODO:  
* Architectural Diagram (Shows how key parts of the system work)>


Architectural Diagram

![Screen Shot 2021-11-07 at 11 25 24 AM](https://user-images.githubusercontent.com/54340800/140655153-45fc6034-3070-4ea8-bd2f-993373f6d444.png)

<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

* Project running on Azure App Service

* Project cloned into Azure Cloud Shell

![project clone](https://user-images.githubusercontent.com/54340800/140670440-6943090e-a5cb-494f-bd6d-6d83da329551.png)

* Passing tests that are displayed after running the `make all` command from the `Makefile`
*
![Make_all](https://user-images.githubusercontent.com/54340800/140670388-7e6fc89e-bf29-41cf-be53-07b2d3bd70db.png)

* Output of a test run

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:

![Make_prediction](https://user-images.githubusercontent.com/54340800/140670530-4fc67988-0af9-45ff-972e-8bcd2cd4df1b.png)


* Output of streamed log files from deployed application

![Logfiles](https://user-images.githubusercontent.com/54340800/140670926-581c3912-2b9e-456c-b437-74245004e364.png)


[{"machineName":"pl1sdlwk00013G_default","lastUpdated":"2021-11-08T01:25:48.1705213Z","size":2070,"href":"https://flask-azure-project2.scm.azurewebsites.net/api/vfs/LogFiles/2021_11_08_pl1sdlwk00013G_default_docker.log","path":"/home/LogFiles/2021_11_08_pl1sdlwk00013G_default_docker.log"},{"machineName":"pl1sdlwk00013G","lastUpdated":"2021-11-07T20:22:09.6733635Z","size":17138,"href":"https://flask-azure-project2.scm.azurewebsites.net/api/vfs/LogFiles/2021_11_07_pl1sdlwk00013G_docker.log","path":"/home/LogFiles/2021_11_07_pl1sdlwk00013G_docker.log"}]

## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 
  

Screencast is 1-5 minutes in length
Audio is clear
Video is 1080P or higher and text visible
The screencast shows the entire process of the working application, including a demonstration of:

Working Azure Cloud Shell environment for Continuous Integration
Working GitHub Actions build
Successful deployment using Continuous Delivery on the Azure platform.
Successful machine learning prediction that returns back a JSON payload


<TODO: Add link Screencast on YouTube>


