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

https://github.com/

<img width="890" alt="How to create a repo" src="https://user-images.githubusercontent.com/54340800/140673822-e67eebf8-2343-4c09-a194-5448d1618540.png">

There are some other ways you can create the repo and upload the exsitng repo in the github. Here is the link for more info

https://docs.github.com/en/github/importing-your-projects-to-github/importing-source-code-to-github/adding-an-existing-project-to-github-using-the-command-line

Launch the azure shell environment ,create ssh-keys and upload the Github

Another method of using the Azure CLI is by using the cloud shell component which can be accessed after logging in to the Azure portal. Once you are logged in to Azure, click on the command button available on the top of the portal.

Azure Cloud Shell
<img width="960" alt="Powershell" src="https://user-images.githubusercontent.com/54340800/140675349-ad2fae62-98e1-4c2c-9c49-c07f307fe519.png">


Figure 8 – Azure Cloud Shell

A new popup window appears at the bottom of the portal where you will be provided with two options to start with the cloud shell – Bash and PowerShell. For the sake of this article, I’m going ahead with the PowerShell. You can also choose to continue with the Bash option.

Select PowerShell
![AZURESHELL](https://user-images.githubusercontent.com/54340800/140675110-a1ad1d11-2da8-4480-850c-0496e22d5ab0.png)

Figure 9 – Select PowerShell

Once you click on the PowerShell, the next step will be to select the Subscription to proceed ahead. If you dont have any storage account you need to create a simple Storage Account here in order to store the cloud shell scripts to be stored and executed. Go ahead and click on Create Storage. It might take some time to create the necessary storage requirements.

Create Storage Account

if you have already storage account you will ge the azure shell like this

<img width="960" alt="Powershell" src="https://user-images.githubusercontent.com/54340800/140675620-58687c86-b026-40a7-80f1-662f6d696b04.png">

Once the Storage Account is created, the shell will start automatically, and you can run the Azure CLI commands as usual.

Cloud Shell


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


