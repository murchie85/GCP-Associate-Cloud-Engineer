 # GCP Google Certified Associate Cloud Engineer 

 ![GCP](https://miro.medium.com/max/1170/0*ynoPPPbkLerdcQ2x.png)

## Navigation 

- [Summary](#Summary)  
- [Exam Domains](#Exam-Domains)   
- [Account Setup](#Account-Setup)  
- [Shell](#Shell)  
- [Data Flows](#Data-Flows)  
- []()  
- []()  

## Summary

GCP ACE is similar but slightly harder than the AWS SysOps (the hardest of the AWS associate exams).  
  
### Google Job Role Description for ACE 
  
An Associate Cloud Engineer deploys applications, monitors operations of multiple projects, and maintains enterprise solutions to ensure that they meet target performance metrics. This individual has experience working with public clouds and on-premises solutions. They are able to use Google Cloud Console and the command-line interface to perform common platform-based tasks to maintain one or more deployed solutions that leverage Google-managed or self-managed services on Google Cloud.  
  

- Deploys applications  
- Monitors operations of multiple projects  
- Maintains enterprise solutions to ensure they meet target performance metrics  
- Experience working with public cloud and on-prem solutions.  
- Able to use google cloud console and CLI  
- Performs common platform-based tasks   
- Leverages google-managed or self-managed services on google cloud.  


# Exam Domains   
  
[Navigation](#Navigation)   
  
 
1. Setting up a cloud solution environment  
2. Planning and configuring a cloud solution.  
3. Deploying an implementing a cloud solution.  
4. Ensuring succesful operation of a cloud solution.  
5. Configuring access and security.  

  

## In detail 
 
Go [here](https://cloud.google.com/certification/guides/cloud-engineer)

1.1 Setting up cloud projects and accounts.  
1.2 Managing billing configuration  
1.3 Installing and configuring the command line interface (CLI)  
    
2.1 Planning and estimating GCP product use using the Pricing Calculator  
2.2 Planning and configuring compute resources.   
2.3 Planning and configuring data storage options    
2.4 Planning and configuring network resources.   
  
3.1 Deploying and implementing Compute Engine resources  
3.2 Deploying and implementing Google Kubernetes Engine resources  
3.3 Deploying and implementing App Engine, Cloud Run, and Cloud Functions resources.  
3.4 Deploying and implementing data solutions.   
3.5 Deploying and implementing networking resources.  
3.6 Deploying a solution using Cloud Marketplace  
3.7 Deploying application infrastructure using Cloud Deployment Manager  
  

4.1 Managing Compute Engine resources  
4.2 Managing Google Kubernetes Engine resources  
4.3 Managing App Engine and Cloud Run resources  
4.4 Managing storage and database solutions  
4.5 Managing networking resources  
4.6 Monitoring and logging  
  

5.1 Managing identity and access management (IAM).  
5.2 Managing service accounts.   
5.3 Viewing audit logs for project and managed services.  
  

## GOOGLE CHEAT SHEET 
  
[Navigation](#Navigation)   
  

  
![](https://miro.medium.com/max/10800/1*sph0ts7XHl2XHIkD0GWlSA.png)  
  

# Account Setup  
  
**LEAST PRIVILEGE**  

- Create a new account for billing
- secure with 2fa
- Forward mail to normal account   
- Admin account for billing rarely needed.  

1. Go incognito.  
2. Go to google free trial.  
3. create account.  
4. Setup 2FA
5. Set up mail forwarding   
  

`https://console.cloud.google.com`  
  
Projects have:  
  
- Names  
- Project Id  
- Project Number  
- State (active)


# Creating a User Account   

  
For free tier,  

1. Go to billing   
2. Go to account settings/management 
3. Add user (billing user )  
4. Select another account - when that account creates a new project it will be linked.  
  



# Shell   
  
[Navigation](#Navigation)  
  

Persistent 5gb volume  but VM is ephemeral (reset 20 mins after session end.)  
   
## General  

| cloudshell      | command           | 
| ------------- |:-------------| 
| `gcloud projects list`  |  list projects| 
| `gcloud config set project` |   set project |
| `gcloud projects describe` |  project info|
| `gcloud config list`  | showconfig |
| `gcloud components install` | Install specific components|
| `gcloud info`  | show current env details |
| `gcloud config set`| Define a property (like compute/zone) for the current configuration|
| `gcloud config list`|Display all the properties for the current configuration.|
  
  
## Identity & Access Management
  
| command      | description           |  
| :------------- |:-------------| 
|`gcloud iam list-grantable-roles`| List IAM grantable roles for a resource.|
|`gcloud iam roles create`| Create a custom role for a project or org.|
|`gcloud iam service-accounts create`| Create a service account for a project.|
|`gcloud iam service-accounts add-iam-policy-binding`| Add an IAM policy binding to a service account.|
|`gcloud iam service-accounts set-iam-policy-binding`| Replace existing IAM policy binding.|
|`gcloud iam service-accounts keys list`| List a service account's keys.|   
  
## Docker and GKE  
  
| command      | description           |  
| :------------- |:-------------|   
|`gcloud auth configure-docker`| Register the gcloud tool as a Docker credential helper.| 
|`gcloud container clusters create`| Create a cluster to run GKE containers. | 
|`gcloud container clusters list`| List clusters for running GKE containers. | 
|`gcloud container clusters get-credentials`| Update kubeconfig to get kubectl to use a GKE cluster.| 
|`gcloud container images list-tags`| List tag and digest metadata for a container image.| 
  
    
## Virtual Machines & Compute Engine   
  
| command      | description           |  
| :------------- |:-------------|    
|`gcloud compute zones list`|  List Compute Engine zones.|
|`gcloud compute instances describe`|  Display a VM instance's details.|
|`gcloud compute instances list`|  List all VM instances in a project.|
|`gcloud compute disks snapshot`|  Create snapshot of persistent disks.|
|`gcloud compute snapshots describe`|  Display a snapshot's details.|
|`gcloud compute snapshots delete`|  Delete a snapshot.|
|`gcloud compute ssh`|  Connect to a VM instance by using SSH.  |
  
  


`dl file` to doownload a file.  
  
You can run a server and view it by using the port utility top right hand side.   
  
SDK opens in new window.  
  

## GSUTIL
  
[creatingBuckets](https://cloud.google.com/storage/docs/creating-buckets#storage-create-bucket-gsutil)  
[storageLocations](https://cloud.google.com/storage/docs/locations)   
  

`ch` means change  
`**` means all but as flat hiearchy  
`acl` means access control list  


| command      | description           |  
| :------------- |:-------------|    
|`gsutil ls`|  List buckets|  
| `gsutil ls gs://my-bucket`   | list bucket contents |
| `gsutil ls -a gs://my-bucket`   | list bucket archive info |   
|`gsutil ls bucket/** `| list everything |  
|`gsutil mb `| make bucket|  
|`gsutil mb --help`| make bucket help  |  
|`gsutil mb -l EUROPE-WEST2 gs://mcmurchie_london_bucket` | create bucket in london with name|  
| `gsutil cp Desktop/kitten.png gs://my-awesome-bucket`   | copy file into bucket  |
| `gsutil cp -r x y `   | copy recursively |
| `gsutil cp x/** y `   | copy all contents to root as flat |
| `gsutil ls -l gs://my-awesome-bucket/kitten.png`   |  list bucket conent details |  
|`gsutil label get gs://mcmurchies_london_bucket1` | get **labels** for bucket |  
|`gsutil label set mylabelsfile.json gs://my_bucket/` | set label on bucket from file |   
|`gsutil label ch -l "function:learning" gs://my-bucket/` | append label to bucket|
|`gsutil versioning get gs://my-bucket` | get bucket version|
|`gsutil versioning set on gs://my-bucket` | Enable Bucket Versioning|    
|`gsutil acl ch -u AllUsers:R gs://my-bucket/stuff.jpg`| change permisions|

# Data Flows   
  
[Navigation](#Navigation)   
  
  

Data flow thinking is very important in this course.  
  
**Mental Model** you remember something by understanding it.   
  

- MOVING -------- NETWORK  
- PROCESSING -------- COMPUTE  
- REMEMBERING -------- STORAGE  
   
This is a general appraoch.  

Systems combine   
  
- Build largers systems from smaller ones   (abstractions useful)
- zoom in and out    
  

Example for cloud lab  
  
![](images/dataflowshell.png)  
  
  