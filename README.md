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

![azure_shell](https://user-images.githubusercontent.com/54340800/140675981-a30f2949-92a5-47f8-ba31-bb51eb11f188.JPG)

In order to create virtual environment you have pu the following command
python3 -m venv env(this is name of the vistual environment)

Activate the virtual environment by putting
source .env/bin/activate
![Virtual env](https://user-images.githubusercontent.com/54340800/140676349-f5d2862f-0909-4163-b13d-b4e0a5ae7cd4.JPG)

Now need to creat ssh-keys to put in the github. 

<img width="890" alt="SSH-keys" src="https://user-images.githubusercontent.com/54340800/140676773-c81ae2da-1bc9-4990-8a88-f802d600c190.png">

Enter ls -al ~/.ssh to see if existing SSH keys are present.

Generating a new SSH key and adding it to the ssh-agent

Paste the text below, substituting in your GitHub email address.

$ ssh-keygen -t ed25519 -C "your_email@example.com"

When you're prompted to "Enter a file in which to save the key," press Enter. This accepts the default file location.

> Enter a file in which to save the key (/c/Users/you/.ssh/id_algorithm):[Pr

At the prompt, type a secure passphrase. For more information, see "Working with SSH key passphrases."

> Enter passphrase (empty for no passphrase): [Type a passphrase]
> Enter same passphrase again: [Type passphrase again]

Ensure the ssh-agent is running. You can use the "Auto-launching the ssh-agent" instructions in "Working with SSH key passphrases", or start it manually:

# start the ssh-agent in the background


$ eval "$(ssh-agent -s)"


Add your SSH private key to the ssh-agent. If you created your key with a different name, or if you are adding an existing key that has a different name, replace id_ed25519 in the command with the name of your private key file.

$ ssh-add ~/.ssh/id_ed25519

Adding a new SSH key to your GitHub account

Copy the SSH public key to your clipboard.

If your SSH public key file has a different name than the example code, modify the filename to match your current setup. When copying your key, don't add any newlines or whitespace.

$ pbcopy < ~/.ssh/id_ed25519.pub
<img width="890" alt="SSH-keys_paste" src="https://user-images.githubusercontent.com/54340800/140677693-0ce291fd-ee5c-4ab6-bc14-d6589def1967.png">


NOw you have to clone github repo to local drive in the virtual environment

1. Get the code link from the repo

<img width="774" alt="Clone" src="https://user-images.githubusercontent.com/54340800/140678312-4721ee7d-35c8-49ad-9a76-7244cf36a670.png">

in the azure shell put the below commands to get the repo to local drive

git clone git@github.com:enam1977/udacity_project_2_part1.git

<img width="960" alt="clone file" src="https://user-images.githubusercontent.com/54340800/140678660-f50581e7-1b23-4a8a-b6bb-cafeee2fc38a.png">



Cloud Shell

![project clone](https://user-images.githubusercontent.com/54340800/140670440-6943090e-a5cb-494f-bd6d-6d83da329551.png)





* Passing tests that are displayed after running the `make all` command from the `Makefile`
*
![Make_all](https://user-images.githubusercontent.com/54340800/140670388-7e6fc89e-bf29-41cf-be53-07b2d3bd70db.png)

* Output of a test run

Continious Intrigation: Configure GitHub Actions

![Screen Shot 2021-11-08 at 4 47 06 PM](https://user-images.githubusercontent.com/54340800/140831727-daf829b0-38d1-4b43-b7ae-5c7bee27ade1.png)

Enable Github Actions
Go to your Github Account and enable Github Actions.

2. Replace yml code
Replace the pythonapp.yml code with the following scaffolding code.

name: Python application test with Github Actions

on: [push]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2
    - name: Set up Python 3.5
      uses: actions/setup-python@v1
      with:
        python-version: 3.5
    - name: Install dependencies
      run: |
        make install
    - name: Lint with pylint
      run: |
        make lint
    - name: Test with pytest
      run: |
        make test
        
    
    





<img width="879" alt="github action" src="https://user-images.githubusercontent.com/54340800/140848805-d567d75e-94da-4b60-a816-592da0f31dc9.png">
    
    
<img width="916" alt="github action2" src="https://user-images.githubusercontent.com/54340800/140851495-82ad30ed-b401-4c62-8a00-10c81f2952c7.png">


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


