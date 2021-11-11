# Overview

Create a azure pipeline azure Continuous Integration and Continuous Delivery using azure piplines and github action.

## Project Plan

First to create a project plan in Trello and spreadsheet. Here is the link for both below

* A link to a Trello board for the project
https://trello.com/b/JBlYiBbd/to-do
* A link to a spreadsheet that includes the original and final project plan>
https://docs.google.com/spreadsheets/d/1YjrBt-l6RQC9xPeYgFklU0uK3osKhnzwvnNehwnNigc/edit?usp=sharing

## Azure DevOps Principles and Practices

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

* Architectural Diagram (Shows how key parts of the system work)>

  Architectural Diagram

![Screen Shot 2021-11-07 at 11 25 24 AM](https://user-images.githubusercontent.com/54340800/140655153-45fc6034-3070-4ea8-bd2f-993373f6d444.png)

## Project running on Azure App Service

How to Project cloned into Azure Cloud Shell

*  Go the link https://github.com/ and follow the instructions in the image below to create a repo.

<img width="890" alt="How to create a repo" src="https://user-images.githubusercontent.com/54340800/140673822-e67eebf8-2343-4c09-a194-5448d1618540.png">

 There are some other ways you can create the repo and upload the exsitng repo in the github. Please check the reference section to get more details.

Launch the azure shell environment ,create ssh-keys and upload the Github

* In order to using the Azure CLI is by using the cloud shell component which can be accessed after logging in to the Azure portal. Once you are logged in to Azure, click on the command button available on the top of the portal.

* Click the highlighted box to open the Azure Cloud Shell as shown in the image below

<img width="960" alt="Powershell" src="https://user-images.githubusercontent.com/54340800/140675349-ad2fae62-98e1-4c2c-9c49-c07f307fe519.png">

* A new popup window appears at the bottom of the portal where you will be provided with two options to start with the cloud shell – Bash and PowerShell. For the sake of this article, I’m going ahead with the PowerShell. You can also choose to continue with the Bash option.

* Select PowerShell

![Screen Shot 2021-11-10 at 8 52 53 PM](https://user-images.githubusercontent.com/54340800/141228984-d601f190-7039-4c6f-acec-c802b844fe59.png)


* Once you click on the PowerShell, the next step will be to select the Subscription to proceed ahead. If you dont have any storage account you need to create a simple Storage Account here in order to store the cloud shell scripts to be stored and executed. Go ahead and click on Create Storage. It might take some time to create the necessary storage requirements.

* Create Storage Account

if you have already storage account you will ge the azure shell like this

![azure_shell](https://user-images.githubusercontent.com/54340800/140675981-a30f2949-92a5-47f8-ba31-bb51eb11f188.JPG)

* In order to create virtual environment you have pu the following command

    python3 -m venv env(this is name of the vistual environment)

* Activate the virtual environment by putting

    source .env/bin/activate
  
  ![Virtual env](https://user-images.githubusercontent.com/54340800/140676349-f5d2862f-0909-4163-b13d-b4e0a5ae7cd4.JPG)

* Now need to create ssh-keys to put in the github. 

  <img width="890" alt="SSH-keys" src="https://user-images.githubusercontent.com/54340800/140676773-c81ae2da-1bc9-4990-8a88-f802d600c190.png">

* Enter ls -al ~/.ssh to see if existing SSH keys are present.

* Generating a new SSH key and adding it to the ssh-agent

* Paste the text below, substituting in your GitHub email address.

   ssh-keygen -t ed25519 -C "your_email@example.com"

* When you're prompted to "Enter a file in which to save the key," press Enter. This accepts the default file location.

* At the prompt, type a secure passphrase. It will come twice. if you dont want to put any passphrase. Press enter.

  Ensure the ssh-agent is running. You can use the "Auto-launching the ssh-agent" instructions in "Working with SSH key passphrases", or start it manually:

* start the ssh-agent in the background

  $ eval "$(ssh-agent -s)"

Add your SSH private key to the ssh-agent. If you created your key with a different name, or if you are adding an existing key that has a different name, replace id_ed25519 in the command with the name of your private key file.

  $ ssh-add ~/.ssh/id_ed25519


Adding a new SSH key to your GitHub account

* Copy the SSH public key to your clipboard.

If your SSH public key file has a different name than the example code, modify the filename to match your current setup. When copying your key, don't add any newlines or whitespace.

  pbcopy < ~/.ssh/id_ed25519.pub
  
  <img width="890" alt="SSH-keys_paste" src="https://user-images.githubusercontent.com/54340800/140677693-0ce291fd-ee5c-4ab6-bc14-d6589def1967.png">

Clone github repo to local drive in the virtual environment

* Get the code link from the repo shown below and 

  <img width="774" alt="Clone" src="https://user-images.githubusercontent.com/54340800/140678312-4721ee7d-35c8-49ad-9a76-7244cf36a670.png">

* Put the below commands to get the repo to local drive
 
  git clone git@github.com:enam1977/udacity_project_2_part1.git

  <img width="960" alt="clone file" src="https://user-images.githubusercontent.com/54340800/140678660-f50581e7-1b23-4a8a-b6bb-cafeee2fc38a.png">

* Cloud Shell

  ![project clone](https://user-images.githubusercontent.com/54340800/140670440-6943090e-a5cb-494f-bd6d-6d83da329551.png)


# Passing tests that are displayed after running the `make all` command from the `Makefile`

![Make_all](https://user-images.githubusercontent.com/54340800/140670388-7e6fc89e-bf29-41cf-be53-07b2d3bd70db.png)


# Continious Intrigation: Configure GitHub Actions

![Screen Shot 2021-11-08 at 4 47 06 PM](https://user-images.githubusercontent.com/54340800/140831727-daf829b0-38d1-4b43-b7ae-5c7bee27ade1.png)


Enable Github Actions

* Go to your Github Account and enable Github Actions.

* Replace the pythonapp.yml code with the following scaffolding code.

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
    
    
![Screen Shot 2021-11-10 at 8 55 27 PM](https://user-images.githubusercontent.com/54340800/141229219-c971cd90-d504-4cf9-a799-83b46096feb5.png)

    



* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment


Provision the target Azure App Service


The quickest way to create an App Service instance is to use the Azure command-line interface (CLI) through the interactive Azure Cloud Shell. In the following steps, you use az webapp up to both provision the App Service and perform the first deployment of your app.
1.	Sign in to the Azure portal at https://portal.azure.com.
2.	Open the Azure CLI by selecting the Cloud Shell button on the portal's toolbar:
 
 ![image](https://user-images.githubusercontent.com/54340800/141046170-3571dfc3-4028-4662-bb8b-b6f35daed5d1.png)

3.	The Cloud Shell appears along the bottom of the browser. Select Bash from the dropdown:

![Screen Shot 2021-11-09 at 9 47 16 PM](https://user-images.githubusercontent.com/54340800/141046309-72e064fd-e2bc-4740-beb4-2fe39a01eb46.png)

 
4.	In the Cloud Shell, clone your repository using git clone. For the example app, use:

  git clone git@github.com:enam1977/udacity_project_2_part2.git


5.	In the Cloud Shell, change directories into the repository folder that has your Python app, so the az webapp up command will recognize the app as Python.

  cd udacity_project_2_part2
  
6.	In the Cloud Shell, use az webapp up to create an App Service and initially deploy your app.

  
  az webapp up -n flask-azure-project2 (In your case app service name will be wahtever you provide)
  
  Change <your-appservice> to a name for your app service that's unique across Azure. Typically, you use a personal or company name along with an app identifier,   such as <your-name>-flaskpipelines. The app URL becomes <your-appservice>.azurewebsites.net.

7.	If your app uses a custom startup command, set the az webapp config property. 
  
  az webapp config set -g <your-resource-group> -n <your-appservice> --startup-file <your-startup-file-or-command>

8.	To see the running app, open a browser and go to http://flask-azure-project2.azurewebsites.net. If you see a generic page, wait a few seconds for the App Service to start, and refresh the page.

Create an Azure DevOps project and connect to Azure
  
To deploy to Azure App Service from Azure Pipelines, you need to establish a service connection between the two services.
  
1.	In a browser, go to dev.azure.com. If you don't yet have an account on Azure DevOps, select Start free and get a free account. If you have an account already, select Sign in to Azure DevOps.
 

2.	Once you sign in, the browser displays your Azure DevOps dashboard, at the URL https://dev.azure.com/<your-organization-name>. An Azure DevOps account can belong to one or more organizations, which are listed on the left side of the Azure DevOps dashboard. If more than one organization is listed, select the one you want to use for this walkthrough. By default, Azure DevOps creates a new organization using the email alias you used to sign in.

  A project is a grouping for boards, repositories, pipelines, and other aspects of Azure DevOps. If your organization doesn't have any projects, enter the project name Flask Pipelines under Create a project to get started, and then select Create project.
 
If your organization already has projects, select New project on the organization page. In the Create new project dialog box, enter the project name and select Create.
  
  <img width="394" alt="Screen Shot 2021-11-10 at 7 00 46 PM" src="https://user-images.githubusercontent.com/54340800/141218075-ae41640e-8bb0-4d45-bd98-8821e58890de.png">

3.	From the new project page, select Project settings from the left navigation.
  
 <img width="626" alt="Screen Shot 2021-11-10 at 7 03 05 PM" src="https://user-images.githubusercontent.com/54340800/141218302-530bd532-e816-48ef-868a-3888322bf87b.png">

4.	On the Project Settings page, select Pipelines > Service connections, then select New service connection, and then select Azure Resource Manager from the dropdown.
 
  <img width="664" alt="Screen Shot 2021-11-10 at 7 04 21 PM" src="https://user-images.githubusercontent.com/54340800/141218358-0d563a99-1100-4c6a-84e1-ce02a94fb875.png">

  
5.	In the Add an Azure Resource Manager service connection dialog box:
1.	Give the connection a name. Make note of the name to use later in the pipeline.
2.	For Scope level, select Subscription.
3.	Select the subscription for your App Service from the Subscription drop-down list.
4.	Under Resource Group, select your resource group from the dropdown.
5.	Make sure the option Allow all pipelines to use this connection is selected, and then select OK.
  
  <img width="673" alt="Screen Shot 2021-11-10 at 7 06 12 PM" src="https://user-images.githubusercontent.com/54340800/141218583-57dcc305-9baf-4813-afa0-88e8bdb48384.png">

 

Create a Python-specific pipeline to deploy to App Service
  
  
1.	From your project page left navigation, select Pipelines.
  
  <img width="802" alt="Screen Shot 2021-11-10 at 7 15 08 PM" src="https://user-images.githubusercontent.com/54340800/141219368-a6e496d1-f7f8-443a-a665-af77decab9b2.png">

 
2.	Select Create Pipeline:
 <img width="783" alt="Screen Shot 2021-11-10 at 7 16 49 PM" src="https://user-images.githubusercontent.com/54340800/141219529-5f985f99-786d-4664-bcfd-ad9cb32f9eaa.png">

  
3.	On the Where is your code screen, select GitHub. You may be prompted to sign into GitHub.
  
 <img width="791" alt="Screen Shot 2021-11-10 at 7 17 30 PM" src="https://user-images.githubusercontent.com/54340800/141219607-4f4eb87f-391d-4876-97f0-36c62606725a.png">

4.	On the Select a repository screen, select the repository that contains your app, such as your fork of the example app.
  
  <img width="457" alt="Screen Shot 2021-11-10 at 7 21 16 PM" src="https://user-images.githubusercontent.com/54340800/141219925-79f24eb5-938f-40aa-bb7c-b848ec0bce8c.png">

 
5.	You may be prompted to enter your GitHub password again as a confirmation, and then GitHub prompts you to install the Azure Pipelines extension:
  
  <img width="862" alt="Screen Shot 2021-11-10 at 7 23 24 PM" src="https://user-images.githubusercontent.com/54340800/141220119-4032161f-d502-47f2-a376-b3348e6c752e.png">


6.	On the Configure your pipeline screen, select Python to Linux Web App on Azure.

Azure Pipelines creates an azure-pipelines.yml file that defines your CI/CD pipeline as a series of stages, Jobs, and steps, where each step contains the details for different tasks and scripts. Take a look at the pipeline to see what it does. Make sure all the default inputs are appropriate for your code.

  
 
Run the pipeline
  
You're now ready to try it out!
1.	Select Save at upper right in the editor, and in the pop-up window, add a commit message and select Save.
2.	Select Run on the pipeline editor, and select Run again in the Run pipeline dialog box. Azure Pipelines queues another pipeline run, acquires an available build agent, and has that build agent run the pipeline.
The pipeline takes a few minutes to complete, especially the deployment steps. You should see green checkmarks next to each of the steps.
If there's an error, you can quickly return to the YAML editor by selecting the vertical dots at upper right and selecting Edit pipeline:
  
  <img width="840" alt="Screen Shot 2021-11-10 at 7 41 09 PM" src="https://user-images.githubusercontent.com/54340800/141221811-2ac25d57-2548-41d1-bf2a-8c3fc5f3006d.png">

 
3.	From the build page, select the Azure Web App task to display its output. To visit the deployed site, hold down the Ctrl key and select the URL after App Service Application URL.
If you're using the Flask example, the app should appear as follows:
 

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
In the Cloud Shell, run the following command to create a resource group in your Azure subscription. Set a location for the resource group by specifying the value of <your-region>.

  az group create -l <your-region> -n <your-resource-group>
  
2.	Create an App Service Plan.
An App Service runs inside a VM defined by an App Service Plan. Run the following command to create an App Service Plan, substituting your own values for <your-resource-group> and <your-appservice-plan>. The --is-linux is required for Python deployments. If you want a pricing plan other than the default F1 Free plan, use the sku argument. The --sku B1 specifies the lower-price compute tier for the VM. You can easily delete the plan later by deleting the resource group.

  az appservice plan create -g <your-resource-group> -n <your-appservice-plan> --is-linux --sku B1
  
3.	Create an App Service instance in the plan.
Run the following command to create the App Service instance in the plan, replacing <your-appservice> with a name that's unique across Azure.
  If you want to deploy your code at the same time you create the app service, you can use the --deployment-source-url and --deployment-source-branch arguments with the az webapp create command.
  
  az webapp create -g <your-resource-group> -p <your-appservice-plan> -n <your-appservice> --runtime "Python|3.6"
  
4.	If your app requires a custom startup command, use the az webapp config set command, as described earlier in Provision the target Azure App Service. For example, to customize the App Service with your resource group, app name, and startup command, run:

  az webapp config set -g <your-resource-group> -n <your-appservice> --startup-file <your-startup-command-or-file>
  
The App Service at this point contains only default app code. You can now use Azure Pipelines to deploy your specific app code.
  


* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).

  The output should look similar to this:

![Make_prediction](https://user-images.githubusercontent.com/54340800/140670530-4fc67988-0af9-45ff-972e-8bcd2cd4df1b.png)


* Output of streamed log files from deployed application

![Logfiles](https://user-images.githubusercontent.com/54340800/140670926-581c3912-2b9e-456c-b437-74245004e364.png)
  
  * Load test by locust
  
  Created a file named locustfile.py in the repo.
  
  Paste below code to run
  
  from locust import HttpUser, TaskSet, task,constant,SequentialTaskSet

class MyReqRes(SequentialTaskSet):
    
    @task(2)
    def get_user(self):
        res=self.client.get("/")
        print("get Method status is", res.status.code)
    
    @task(2)
    def post_status(self):
        res=self.client.post("/?status=success")
        print("Post method status is", res.status.code)
    
class MyseqTest(HttpUser):
    wait_time=constant(3)
    host="https://flask-azure-project2.azurewebsites.net/"
    tasks=[MyReqRes]
  
  
 Run this command in Azure CLI
  
  locust -f locustio.py --headless -u 200 -r 10 --run-time 1h  
-u specifies the number of Users to spawn. -r specifies the spawn rate (number of users to start per second). If you want to specify the run time for a test, you can do that with --run-time or -t
  
  You can also run locust with head/UI.

locust -f locustio.py
Then go to Locust’s web interface

Once you’ve started Locust, you should open up a browser and point it to http://0.0.0.0:8089. Then you should be greeted with something like this: 
  
![Screen Shot 2021-11-10 at 8 26 25 PM](https://user-images.githubusercontent.com/54340800/141226374-8c782029-db95-43c5-9d58-ae7ff7fe8e9d.png)

Result of the locust
  
  ![Screen Shot 2021-11-10 at 8 34 33 PM](https://user-images.githubusercontent.com/54340800/141227139-bbbc0d54-497b-4243-bdd1-eb3faadd130d.png)

## Enhancements

There are a lots of ways project can be inproved in future. We have done a very small part of the project
  
  1. Add codes to repo to test the webapp.
  2. Enhance security of the project. Access control
  3. Scale out and Scale up app service plan.
  4. can artifacts and add test plan.
  5. Performace of the webapp
  

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


 # References
  
  https://www.sqlshack.com/getting-started-with-azure-cli-2-0/
  https://cli.github.com/manual/gh_repo_create
  https://docs.github.com/en/github/importing-your-projects-to-github/importing-source-code-to-github/adding-an-existing-project-to-github-using-the-command-line
  https://www.git-tower.com/learn/git/faq/git-create-repository
  https://docs.github.com/en/get-started/quickstart/create-a-repo
  https://www.atlassian.com/git/tutorials/setting-up-a-repository
  https://click.palletsprojects.com/en/7.x/
  https://docs.pytest.org/en/stable/
  https://pypi.org/project/pytest-cov/
  https://pypi.org/project/nbval/
  https://github.com/paiml/testing-in-python
  https://circleci.com/blog/increase-reliability-in-data-science-and-machine-learning-projects-with-circleci/
  https://docs.microsoft.com/en-us/azure/app-service/quickstart-python?tabs=bash&pivots=python-framework-flask
  https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops&viewFallbackFrom=azure-devops%3FWT.mc_id%3Dudacity_learn-wwl
  https://docs.microsoft.com/en-us/azure/devops-project/azure-devops-project-python?WT.mc_id=udacity_learn-wwl
  https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python?view=azure-devops#run-lint-tests-with-flake8?WT.mc_id=udacity_learn-wwl
  https://docs.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops&tabs=yaml
  
