# terrafrm-basics

This repository contains all the basics that are needed to learn and start with Terraform.

>>> What is terraform

```
Terraform is an open-source infrastructure as code (IaC) tool developed by HashiCorp. 

It allows you to define and provision infrastructure resources in a declarative and version-controlled manner. 
With Terraform, you can define the desired state of your infrastructure using a domain-specific language called HashiCorp Configuration Language (HCL) 
```

>>> Terraform only recognizes the files that end with *.tf or *.tfvars 

*   All the infra files end's with *.tf 
*   All the variable files ends with `*.tfvars` and `terraform.tfvars` is the default terraform variables file which will be recognized by terraform by default. 
*   Any variables file *.tfvars part from terraform.tfvars has to be explicity mentioned while running terraform commands.

> How to supply the varaibles file as a part of the terraform apple ?

```
    $ terraform plan -var-file=dev.tfvars 
```

> How to supply variables from the command line ? use -var city=delhi

```
    $  terraform plan -var-file=dev.tfvars  -var states=28
```


### Attribute vs Argument in Terraform 

Argument   : This comes up as a part of the resource creation! This is to define properties to the resource you're creating.
```
argument example : 
                    ami , security_group , key_name
```
attribute  : These are the properties of the resource which will only be available after the resource creation only 

```
Attribute example : 
                    private_ip, vm_id, network_attributes
```

>>> You cannot create either an attibute nor an argument. You just need to stick to the provider documentation.


### Can we write TF Code in multiples files of a folder ?

```
YES! As long as your code is in the files that ends with *.tf, terraform takes care of everything.

When you do a Terraform Plan, it will load all of them in Alphabetical Order. But compiles as per the logic. ( tf will take care of it. )

```