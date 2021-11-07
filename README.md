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
Continuous integration and continuous delivery (CI/CD)
Version Control
Agile software development
Infrastructure as code
Configuration management
Continuous monitoring


Architectural Diagram

![Screen Shot 2021-11-07 at 11 25 24 AM](https://user-images.githubusercontent.com/54340800/140655153-45fc6034-3070-4ea8-bd2f-993373f6d444.png)

Instructions for running the Python project
A short description of how to improve the project in the future
Screenshots demonstrating key steps


The README includes:

A link to a Trello board for the project
A link to a spreadsheet that includes the original and final project plan (alternatively, the spreadsheet can be included as an .xls file in the GitHub repo)
The spreadsheet contains:

A quarterly and yearly plan
Estimates of the week by week deliverables
Estimation of difficulty or time (or both) for each task
The Trello board contains:

Cards for key tasks
A simple board based flow: To Do, In Progress, Done.



The README includes a link to the screencast on YouTube, which meets the following criteria:

Screencast is 1-5 minutes in length
Audio is clear
Video is 1080P or higher and text visible
The screencast shows the entire process of the working application, including a demonstration of:

Working Azure Cloud Shell environment for Continuous Integration
Working GitHub Actions build
Successful deployment using Continuous Delivery on the Azure platform.
Successful machine learning prediction that returns back a JSON payload


#Continuous Integration


CRITERIA
MEETS SPECIFICATIONS
Clone and build an application inside of Azure Cloud Shell.

The README contains:

A screenshot showing the project cloned into Azure Cloud Shell.
A screenshot showing the passing tests that are displayed after running the make all command from the Makefile.

Conduct a test run on an application in Azure Cloud Shell.

The README contains a screenshot showing the output of a test run.

Use GitHub Actions to test and lint a project while writing code.

The GitHub repo contains the GitHub Actions YAML file

The GitHub actions badge is shown in the README, like in this screenshot.


#Continuous Delivery

Load test an application using Locust.
The README contains a screenshot of the application running against a load test with locust.

There is a locustfile.py file in the repo that is a working example of the load test script specified in the instructions.
Deploy an application using Azure Pipelines into Azure App Services.

The README contains screenshots of the project deployed into an Azure Azure App Service via Azure Pipelines. This should include:
A screenshot of Azure Azure App Service
A screenshot of a successful prediction in Azure Cloud Shell


Use the Azure CLI to deploy and manage an application.
The GitHub repo contains Azure CLI commands in a Bash script called commands.sh, including az webapp up -n <your-appservice>


Test an application inside of Azure Pipelines
The README contains a screenshot of a successful run of the project in Azure Pipelines.

## Instructions

<TODO:  
* Architectural Diagram (Shows how key parts of the system work)>

<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

* Project running on Azure App Service

* Project cloned into Azure Cloud Shell

* Passing tests that are displayed after running the `make all` command from the `Makefile`

* Output of a test run

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:

```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```

* Output of streamed log files from deployed application

> 

## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 

<TODO: Add link Screencast on YouTube>


