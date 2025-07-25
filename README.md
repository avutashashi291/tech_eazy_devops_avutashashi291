# tech_eazy_devops_avutashashi291
Automate EC2 Deployment using Terraform & Shell Scripts
📌 Assignment Objective
This project automates the provisioning of an AWS EC2 instance using Terraform, installs dependencies, deploys a Spring Boot application from GitHub, and performs lifecycle management like scheduled shutdown — all without hardcoding secrets.

✅ Features Implemented
AWS EC2 Setup

Automatically spins up an EC2 instance of a specific type on AWS Free Tier.

Security Group allows HTTP (port 80) and SSH (port 22) access.

Software Installation

Installs:

Java 21 (tested with openjdk version "21.0.2" 2024-01-16)

Maven

Git

App Deployment

Clones this repo: techeazy-devops

Builds the project using mvn clean package

Runs the app with:

bash
Copy
Edit
java -jar target/techeazy-devops-0.0.1-SNAPSHOT.jar
Port Accessibility

Verifies that the app is accessible at:

arduino
Copy
Edit
http://<EC2-Public-IP>/hello
Expected Output: "Hello from Spring MVC!"

Cost Optimization

Automatically stops the EC2 instance after a specified duration (e.g., 10 minutes).

Secure Credentials

No AWS keys are stored in the repo. They are sourced from environment variables.

Environment Support

Supports multiple stages using -var="stage=dev" or -var="stage=prod".

Loads stage-specific configurations from:

dev_config.sh

prod_config.sh
⚙️ How to Run
1. Initialize Terraform
bash
Copy
Edit
terraform init
2. Apply Terraform with Stage and Key Name
bash
Copy
Edit
terraform apply -var="stage=dev" -var="key_name=your-ec2-keypair-name"
🔐 Ensure your AWS CLI is configured and credentials are set in your environment (AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY).

3. Access the App
After deployment, open:

arduino
Copy
Edit
http://<your-ec2-public-ip>/hello
Expected output:

Hello from Spring MVC!
🧹 Teardown
To destroy all created resources and avoid charges:

terraform destroy -var="stage=dev" -var="key_name=your-ec2-keypair-name"
📦 Dependencies
Terraform

AWS CLI

Git

Maven

Java 21

🔐 Security
No secrets, access keys, or sensitive data are hardcoded in the repository.

Best practices are followed for credential management using environment variables.

📄 License
This project is created for educational purposes and as part of a DevOps automation assignment.
