# eks-terraform-springboot
Deploy the **EKS Cluster** using **terraform** then deploy a **Spring Boot** application in the **EKS Cluster** 

![image](https://user-images.githubusercontent.com/38450758/201491650-26cfa08e-70c1-420d-bdf0-c2b2a99bc4dc.png)


![image](https://user-images.githubusercontent.com/38450758/201491597-ff41e3b7-b0cb-4ac4-9845-03cb2b28cd72.png)


**We will do in a simple way:**

	At first we are going to deploy EKS Cluster with Terraform 
	Secondly we are going to deploy the Spring Boot Application on the EKS Cluster.


**let's get our hands dirty**

	Clone the Github repo 
	Go to src folder then add your S3 bucket name, Dynamodb table name and region in the backend.tf file for remote terraform statefile.
	 Add your AWS account user access key and secret access key in the terraform.tfvars file. Other things are optional.
	 S3 bucket and DynamoDB table both should be in same Region.


**Make sure below things:**

	 Access and Secret keys Add in the .bashrc file
	AWS Profile is configured on your linux machine or we can use the default account also.


**Run the below command:**

	$ terraform init
	$ terraform plan
	$ terraform apply



**After deploying EKS cluster using terraform, the output will be like below.**

$ aws eks --region us-west-2 update-kubeconfig --name AscendionWorkshop-cluster
$ kubectl get nodes –o wide
$ kubectl get pods 

**Switch to eks directory then deploy the SprintBoot application by using the below commands**

$ kubectl apply –f deployment.yaml

**Check the deployment is successful or not**

$ kubectl get deployment –l app=springboot

**Then deploy the Service**

$ kubectl apply –f service.yaml
$ kubectl get svc

**Access the SpringBoot app by entering the external address of the springboot pod in any browser**

