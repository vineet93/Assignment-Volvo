Platform Engineer practical test :- 

1.) Create a sample application to print “Welcome to 2022”and user agent info using any
programming language.

[Vineet] : Application is created in the application folder and has to rest endpoint.
    1.) /api --> Returns the message "Welcome to 2022".
    2.) /agent --> Returns the agent Informtion.

2.) Create a VNet in Azure or VPC in AWS or GCP with your own CIDR choice using best
practices.

[Vineet] : Vnet is created in Azure Cloud using Iac tool. Terraform is used for Infrastructure provisioning and code is present in Infrastructure folder.

3.) Build your application and create container image to deploy your application.

[Vineet] : Maven is used a build tool to package the Spring Boot Application and it is configured as a task in Azure Devops Pipeline. Once the Jar is created it's published as Azure Artifacts and Copied into Docker File Context. Docker Image is built out of Docker File and it is pushed to Azure Container Registry. Helm is used as a packaginf tool which automates the creation, packaging, configuration, and deployment of Kubernetes applications by combining your configuration files into a single reusable package. Azure Kubernetes Service is used as container orchestration platform for deployment if application.

4.) Deploy your application using any type of automated pipeline on container orchestration
platform in Azure or AWS or GCP.

[Vineet] :  azure-pipeline.yml file is present in Application folder which is used to deploy the application end to end on AKS Cluster.

5.) Give us an endpoint to access your application.

[Vineet] :

1.) http://20.88.248.180/api -- Returns the Message "Welcome to 2022"
2.) http://20.88.248.180/agent -- Returns the Agent Information.

