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




Provision the target Azure App Service
The quickest way to create an App Service instance is to use the Azure command-line interface (CLI) through the interactive Azure Cloud Shell. In the following steps, you use az webapp up to both provision the App Service and perform the first deployment of your app.
1.	Sign in to the Azure portal at https://portal.azure.com.
2.	Open the Azure CLI by selecting the Cloud Shell button on the portal's toolbar:
 
3.	The Cloud Shell appears along the bottom of the browser. Select Bash from the dropdown:
 
4.	In the Cloud Shell, clone your repository using git clone. For the example app, use:
BashCopy
git clone https://github.com/<your-alias>/python-sample-vscode-flask-tutorial
Replace <your-alias> with the name of the GitHub account you used to fork the repository.
 Tip
To paste into the Cloud Shell, use Ctrl+Shift+V, or right-click and select Paste from the context menu.
 Note
The Cloud Shell is backed by an Azure Storage account in a resource group called cloud-shell-storage-<your-region>. That storage account contains an image of the Cloud Shell's file system, which stores the cloned repository. There is a small cost for this storage. You can delete the storage account at the end of this article, along with other resources you create.
5.	In the Cloud Shell, change directories into the repository folder that has your Python app, so the az webapp up command will recognize the app as Python.
BashCopy
cd python-sample-vscode-flask-tutorial
6.	In the Cloud Shell, use az webapp up to create an App Service and initially deploy your app.
Azure CLICopy
az webapp up -n <your-appservice>
Change <your-appservice> to a name for your app service that's unique across Azure. Typically, you use a personal or company name along with an app identifier, such as <your-name>-flaskpipelines. The app URL becomes <your-appservice>.azurewebsites.net.
When the command completes, it shows JSON output in the Cloud Shell.
 Tip
If you encounter a "Permission denied" error with a .zip file, you may have tried to run the command from a folder that doesn't contain a Python app. The az webapp up command then tries to create a Windows app service plan, and fails.
7.	If your app uses a custom startup command, set the az webapp config property. For example, the python-sample-vscode-flask-tutorial app contains a file named startup.txt that contains its specific startup command, so you set the az webapp config property to startup.txt.
1.	From the first line of output from the previous az webapp up command, copy the name of your resource group, which is similar to <your-name>_rg_Linux_<your-region>.
2.	Enter the following command, using your resource group name, your app service name (<your-appservice>), and your startup file or command (startup.txt).
Azure CLICopy
az webapp config set -g <your-resource-group> -n <your-appservice> --startup-file <your-startup-file-or-command>
Again, when the command completes, it shows JSON output in the Cloud Shell.
8.	To see the running app, open a browser and go to http://<your-appservice>.azurewebsites.net. If you see a generic page, wait a few seconds for the App Service to start, and refresh the page.
 Note
For a detailed description of the specific tasks performed by the az webapp up command, see Provision an App Service with single commands at the end of this article.
Create an Azure DevOps project and connect to Azure
To deploy to Azure App Service from Azure Pipelines, you need to establish a service connection between the two services.
1.	In a browser, go to dev.azure.com. If you don't yet have an account on Azure DevOps, select Start free and get a free account. If you have an account already, select Sign in to Azure DevOps.
 Important
To simplify the service connection, use the same email address for Azure DevOps as you use for Azure.
2.	Once you sign in, the browser displays your Azure DevOps dashboard, at the URL https://dev.azure.com/<your-organization-name>. An Azure DevOps account can belong to one or more organizations, which are listed on the left side of the Azure DevOps dashboard. If more than one organization is listed, select the one you want to use for this walkthrough. By default, Azure DevOps creates a new organization using the email alias you used to sign in.
A project is a grouping for boards, repositories, pipelines, and other aspects of Azure DevOps. If your organization doesn't have any projects, enter the project name Flask Pipelines under Create a project to get started, and then select Create project.
 
If your organization already has projects, select New project on the organization page. In the Create new project dialog box, enter the project name Flask Pipelines, and select Create.
3.	From the new project page, select Project settings from the left navigation.
 
4.	On the Project Settings page, select Pipelines > Service connections, then select New service connection, and then select Azure Resource Manager from the dropdown.
 
5.	In the Add an Azure Resource Manager service connection dialog box:
1.	Give the connection a name. Make note of the name to use later in the pipeline.
2.	For Scope level, select Subscription.
3.	Select the subscription for your App Service from the Subscription drop-down list.
4.	Under Resource Group, select your resource group from the dropdown.
5.	Make sure the option Allow all pipelines to use this connection is selected, and then select OK.
 
The new connection appears in the Service connections list, and is ready for Azure Pipelines to use from the project.
 Note
If you need to use an Azure subscription from a different email account, follow the instructions on Create an Azure Resource Manager service connection with an existing service principal.
Create a Python-specific pipeline to deploy to App Service
1.	From your project page left navigation, select Pipelines.
 
2.	Select Create Pipeline:
 
3.	On the Where is your code screen, select GitHub. You may be prompted to sign into GitHub.
 
4.	On the Select a repository screen, select the repository that contains your app, such as your fork of the example app.
 
5.	You may be prompted to enter your GitHub password again as a confirmation, and then GitHub prompts you to install the Azure Pipelines extension:
 
On this screen, scroll down to the Repository access section, choose whether to install the extension on all repositories or only selected ones, and then select Approve and install:

6.	On the Configure your pipeline screen, select Python to Linux Web App on Azure.
Your new pipeline appears. When prompted, select the Azure subscription in which you created your Web App.
o	Select the Web App
o	Select Validate and configure
Azure Pipelines creates an azure-pipelines.yml file that defines your CI/CD pipeline as a series of stages, Jobs, and steps, where each step contains the details for different tasks and scripts. Take a look at the pipeline to see what it does. Make sure all the default inputs are appropriate for your code.
YAML pipeline explained
The YAML file contains the following key elements:
•	The trigger at the top indicates the commits that trigger the pipeline, such as commits to the main branch.
•	The variables that parameterize the YAML template
 Tip
To avoid hard-coding specific variable values in your YAML file, you can define variables in the pipeline's web interface instead. For more information, see Variables - Secrets.
•	The stages
o	Build stage, which builds your project, and a Deploy stage, which deploys it to Azure as a Linux web app.
o	Deploy stage that also creates an Environment with default name same as the Web App. You can choose to modify the environment name.
•	Each stage has a pool element that specifies one or more virtual machines (VMs) in which the pipeline runs the steps. By default, the pool element contains only a single entry for an Ubuntu VM. You can use a pool to run tests in multiple environments as part of the build, such as using different Python versions for creating a package.
•	The steps element can contain children like task, which runs a specific task as defined in the Azure Pipelines task reference, and script, which runs an arbitrary set of commands.
•	The first task under Build stage is UsePythonVersion, which specifies the version of Python to use on the build agent. The @<n> suffix indicates the version of the task. The @0 indicates preview version. Then we have script-based task that creates a virtual environment and installs dependencies from file (requirements.txt).
YAMLCopy
    steps:
    - task: UsePythonVersion@0
       inputs:
         versionSpec: '$(pythonVersion)'
         displayName: 'Use Python $(pythonVersion)'
    - script: |
         python -m venv antenv
         source antenv/bin/activate
         python -m pip install --upgrade pip
         pip install setup
         pip install -r requirements.txt
       workingDirectory: $(projectRoot)
       displayName: "Install requirements"
•	Next step creates the .zip file that the steps under deploy stage of the pipeline deploys. To create the .zip file, add an ArchiveFiles task to the end of the YAML file:
YAMLCopy
- task: ArchiveFiles@2
   inputs:
     rootFolderOrFile: '$(Build.SourcesDirectory)'
     includeRootFolder: false
     archiveType: 'zip'
     archiveFile: '$(Build.ArtifactStagingDirectory)/Application$(Build.BuildId).zip'
     replaceExistingArchive: true
     verbose: # (no value); this input is optional
- publish: $(Build.ArtifactStagingDirectory)/Application$(Build.BuildId).zip
   displayName: 'Upload package'
   artifact: drop
You use $() in a parameter value to reference variables. The built-in Build.SourcesDirectory variable contains the location on the build agent where the pipeline cloned the app code. The archiveFile parameter indicates where to place the .zip file. In this case, the archiveFile parameter uses the built-in variable Build.ArtifactsStagingDirectory.
 Important
When deploying to Azure App Service, be sure to use includeRootFolder: false. Otherwise, the contents of the .zip file are put in a folder named s, for "sources," which is replicated on the App Service. The App Service on Linux container then can't find the app code.
•	Then we have the task to upload the artifacts.
•	In the Deploy stage, we use the deployment keyword to define a deployment job targeting an environment. By using the template, an environment with same name as the Web app is automatically created if it doesn't already exist. Alternatively you can pre-create the environment and provide the environmentName
•	Within the deployment job, first task is UsePythonVersion, which specifies the version of Python to use on the build agent.
•	We then use the AzureWebApp task to deploy the .zip file to the App Service you identified by the azureServiceConnectionId and webAppName variables at the beginning of the pipeline file. Paste the following code at the end of the file:
YAMLCopy
jobs:
- deployment: DeploymentJob
pool:
  vmImage: $(vmImageName)
environment: $(environmentName)
strategy:
  runOnce:
    deploy:
      steps:

      - task: UsePythonVersion@0
        inputs:
          versionSpec: '$(pythonVersion)'
        displayName: 'Use Python version'

      - task: AzureWebApp@1
        displayName: 'Deploy Azure Web App : {{ webAppName }}'
        inputs:
          azureSubscription: $(azureServiceConnectionId)
          appName: $(webAppName)
          package: $(Pipeline.Workspace)/drop/$(Build.BuildId).zip

          # The following parameter is specific to the Flask example code. You may
          # or may not need a startup command for your app.

          startUpCommand: 'gunicorn --bind=0.0.0.0 --workers=4 startup:app'
The StartupCommand parameter shown here is specific to the python-vscode-flask-tutorial example code, which defines the app in the startup.py file. By default, Azure App Service looks for the Flask app object in a file named app.py or application.py. If your code doesn't follow this pattern, you need to customize the startup command. Django apps may not need customization at all. For more information, see How to configure Python on Azure App Service - Customize startup command.
Also, because the python-vscode-flask-tutorial repository contains the same startup command in a file named startup.txt, you could specify that file in the StartupCommand parameter rather than the command, by using StartupCommand: 'startup.txt'.
Run the pipeline
You're now ready to try it out!
1.	Select Save at upper right in the editor, and in the pop-up window, add a commit message and select Save.
2.	Select Run on the pipeline editor, and select Run again in the Run pipeline dialog box. Azure Pipelines queues another pipeline run, acquires an available build agent, and has that build agent run the pipeline.
The pipeline takes a few minutes to complete, especially the deployment steps. You should see green checkmarks next to each of the steps.
If there's an error, you can quickly return to the YAML editor by selecting the vertical dots at upper right and selecting Edit pipeline:
 
3.	From the build page, select the Azure Web App task to display its output. To visit the deployed site, hold down the Ctrl key and select the URL after App Service Application URL.
If you're using the Flask example, the app should appear as follows:
 
 Important
If your app fails because of a missing dependency, then your requirements.txt file was not processed during deployment. This behavior happens if you created the web app directly on the portal rather than using the az webapp up command as shown in this article.
The az webapp up command specifically sets the build action SCM_DO_BUILD_DURING_DEPLOYMENT to true. If you provisioned the app service through the portal, however, this action is not automatically set.
The following steps set the action:
1.	Open the Azure portal, select your App Service, then select Configuration.
2.	Under the Application Settings tab, select New Application Setting.
3.	In the popup that appears, set Name to SCM_DO_BUILD_DURING_DEPLOYMENT, set Value to true, and select OK.
4.	Select Save at the top of the Configuration page.
5.	Run the pipeline again. Your dependencies should be installed during deployment.
Provision an App Service with single commands
The az webapp up command used earlier in this article is a convenient method to provision the App Service and initially deploy your app in a single step. If you want more control over the deployment process, you can use single commands to accomplish the same tasks. For example, you might want to use a specific name for the resource group, or create an App Service within an existing App Service Plan.
The following steps perform the equivalent of the az webapp up command:
1.	Create a resource group.
A resource group is a collection of related Azure resources. Creating a resource group makes it easy to delete all those resources at once when you no longer need them. In the Cloud Shell, run the following command to create a resource group in your Azure subscription. Set a location for the resource group by specifying the value of <your-region>. JSON output appears in the Cloud Shell when the command completes successfully.
Azure CLICopy
az group create -l <your-region> -n <your-resource-group>
2.	Create an App Service Plan.
An App Service runs inside a VM defined by an App Service Plan. Run the following command to create an App Service Plan, substituting your own values for <your-resource-group> and <your-appservice-plan>. The --is-linux is required for Python deployments. If you want a pricing plan other than the default F1 Free plan, use the sku argument. The --sku B1 specifies the lower-price compute tier for the VM. You can easily delete the plan later by deleting the resource group.
Azure CLICopy
az appservice plan create -g <your-resource-group> -n <your-appservice-plan> --is-linux --sku B1
Again, you see JSON output in the Cloud Shell when the command completes successfully.
3.	Create an App Service instance in the plan.
Run the following command to create the App Service instance in the plan, replacing <your-appservice> with a name that's unique across Azure. Typically, you use a personal or company name along with an app identifier, such as <your-name>-flaskpipelines. The command fails if the name is already in use. By assigning the App Service to the same resource group as the plan, it's easy to clean up all the resources at once.
Azure CLICopy
az webapp create -g <your-resource-group> -p <your-appservice-plan> -n <your-appservice> --runtime "Python|3.6"
 Note
If you want to deploy your code at the same time you create the app service, you can use the --deployment-source-url and --deployment-source-branch arguments with the az webapp create command. For more information, see az webapp create.
 Tip
If you see the error message "The plan (name) doesn't exist", and you're sure that the plan name is correct, check that the resource group specified with the -g argument is also correct, and the plan you identify is part of that resource group. If you misspell the resource group name, the command doesn't find the plan in that nonexistent resource group, and gives this particular error.
4.	If your app requires a custom startup command, use the az webapp config set command, as described earlier in Provision the target Azure App Service. For example, to customize the App Service with your resource group, app name, and startup command, run:
Azure CLICopy
az webapp config set -g <your-resource-group> -n <your-appservice> --startup-file <your-startup-command-or-file>
The App Service at this point contains only default app code. You can now use Azure Pipelines to deploy your specific app code.
Clean up resources
To avoid incurring ongoing charges for any Azure resources you created in this walkthrough, such as a B1 App Service Plan, delete the resource group that contains the App Service and the App Service Plan. To delete the resource group from the Azure portal, select Resource groups in the left navigation. In the resource group list, select the ... to the right of the resource group you want to delete, select Delete resource group, and follow the prompts.
You can also use az group delete in the Cloud Shell to delete resource groups.
To delete the storage account that maintains the file system for Cloud Shell, which incurs a small monthly charge, delete the resource group that begins with cloud-shell-storage-.


![image](https://user-images.githubusercontent.com/54340800/141013786-153bedae-f78e-4b87-b801-483e9b649eb4.png)


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


