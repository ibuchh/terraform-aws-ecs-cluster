# Terraform ECS Cluster

This repository contains `Terrorform` configuration files that provide for standing up an AWS Elastic Container Service Cluster, meant for deploying a docker image in us-west-2 region. It is assumed that the name of the ec2 ssh key is ecs-key.

## Use - Create all resources together


```
terraform apply 
```


## Use - Create resources in sequence

Configure IAM roles.

```
terraform apply -target=module.iam
```


Configure a new VPC.

```
terraform apply -target=module.vpc
```

Configure the auto scaling group and launch configuration via EC2.

```
terraform apply -target=module.ec2
```

Configure a new ECS Cluster with a service.

```
terraform apply -target=module.ecs
```

