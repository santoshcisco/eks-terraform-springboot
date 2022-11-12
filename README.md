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


**We can see the S3 bucket and DynamoDB table in the below images**


![image](https://user-images.githubusercontent.com/38450758/201494425-b3e00949-2263-4374-8fc4-71896b6a8570.png)

![image](https://user-images.githubusercontent.com/38450758/201494451-ba51a0b1-8df2-4900-a4f5-db669df83c7e.png)



**Run the below command:**

	$ terraform init

![image](https://user-images.githubusercontent.com/38450758/201494499-aa5b6e34-c9ea-4e62-aa23-12608de8f69f.png)


	$ terraform plan

![image](https://user-images.githubusercontent.com/38450758/201494521-321a9b0f-ec26-4381-938a-c684aa920db0.png)


	$ terraform apply

**After deploying EKS cluster using terraform, the output will be like below.**


![image](https://user-images.githubusercontent.com/38450758/201494536-ddd4110c-c5c9-4730-907e-bce98f5942a8.png)


**We can see the terraform state file in the below image**


![image](https://user-images.githubusercontent.com/38450758/201494730-d15653a4-e76b-4eb8-834e-13cb8475168d.png)


**We can see the EKS Cluster deployed successfully in the below image**


![image](https://user-images.githubusercontent.com/38450758/201494761-e7b38e49-b2d4-4a0a-b8a0-a043c338a2ec.png)



$ aws eks --region us-west-2 update-kubeconfig --name AscendionWorkshop-cluster


![image](https://user-images.githubusercontent.com/38450758/201494592-36afec1e-7b39-44c0-addd-25505ccf5577.png)


$ kubectl get nodes –o wide
$ kubectl get pods 

**Switch to eks directory then deploy the SprintBoot application by using the below commands**

$ kubectl apply –f deployment.yaml

**Check the deployment is successful or not**

$ kubectl get deployment –l app=springboot

**Then deploy the Service**

$ kubectl apply –f service.yaml
$ kubectl get svc

**Now we can see the SpringBoot application deployment successfully**


![image](https://user-images.githubusercontent.com/38450758/201494844-568000b4-4eae-48c2-aea4-810b74fba43c.png)



**Now access the SpringBoot app by entering the external address of the springboot pod in any browser from the Outside**


![image](https://user-images.githubusercontent.com/38450758/201494863-fdbb9888-46af-44eb-8e3a-33e84cc61d37.png)


