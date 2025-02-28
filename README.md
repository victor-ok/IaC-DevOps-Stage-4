# Infrastructure Automation with Terraform and Ansible
Infrastructure as Code and Configuration Management for DevOps-Stage-4 project

This project automates the provisioning and configuration of cloud infrastructure using *Terraform* and *Ansible*. It provisions cloud servers, configures security groups, dynamically generates Ansible inventory files, and deploys an application using Docker Compose.


```yaml
├── ansible
│   ├── inventory
│   │   └── hosts.yml
│   ├── playbook.yml
│   ├── roles
│   │   ├── dependencies
│   │   │   └── tasks
│   │   │       └── main.yml
│   │   └── deployment
│   │       └── tasks
│   │           └── main.yml
│   ├── templates
│   │   ├── inventory.tmpl
│   │   └── vars.tmpl
│   └── vars
│       └── main.yml
├── Infrastructure
│   ├── main.tf
│   ├── outputs.tf
│   ├── providers.tf
│   ├── terraform.tfstate
│   ├── terraform.tfstate.backup
│   ├── terraform.tfvars
│   └── variables.tf
└── README.md
```

## Prerequisites

1. *Terraform*: Install Terraform from [here](https://www.terraform.io/downloads.html).
2. *Ansible*: Install Ansible from [here](https://docs.ansible.com/ansible/latest/installation_guide/index.html).
3. *Cloud Provider Credentials*: Ensure you have valid credentials for your cloud provider (e.g., AWS, GCP, Azure).
4. *SSH Key*: An SSH key pair for accessing the provisioned servers.
--- 

## Usage

### Step 1: Provision Infrastructure with Terraform
1. Navigate to the Infrastructure directory:
   ```bash
   cd Infrastructure
   ```
2. Create your terraform.tfvars file based on the example:
    ```bash
    cp terraform.tfvars.example terraform.tfvars
    ```
3. configure terraform.tfvars to set your specific configuration values for your instance:
    ```bash
     aws_region        = "us-east-1"
     vpc_cidr          = "10.0.0.0/16"
     instance_type     = "t2.medium"
     key_name          = "your-key-name"
     domain_name       = "your-domain.com"
     environment       = "production"
    ```
4. Initialize Terraform
    ```bash
    terraform init
    ```
5. Review the execution plan:
    ```bash
    terraform plan
    ```
6. Apply the configuration to provision resources:
    ```bash
    terraform apply --auto-approve
    ```
### Step 2: Configure Servers with Ansible
1. Navigate to the ansible directory:
    ```bash
    cd ../ansible
    ```
2. Run the Ansible playbook:
    ```bash
    ansible-playbook -i inventory/hosts.yml playbook.yml
    ```
The Ansible automation folder plays two roles:
1. Dependency Role
    * Installs and configures:
        * Docker
        * Docker Compose
        * Other system dependencies specified
2. Deployment Role
    * runs deployment:
        * Clones the application repository
        * Configures environment variables
        * Sets up Docker Compose with the application
        * Configures Traefik as a reverse proxy with automatic SSL/TLS
### Reverse Proxy:
Reverse Proxy and SSL/TLS is handles by Traefik

### Contributing
Fork the repository
Create a feature branch
Submit a pull request
