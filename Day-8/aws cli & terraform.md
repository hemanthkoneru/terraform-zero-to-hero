Installing AWS CLI and Terraform in GitHub Codespaces is straightforward and can be done by following these steps:

**1. Install AWS CLI in GitHub Codespaces**
You can install the AWS CLI using a script in the Codespaces terminal:

bash
# Update the package lists
sudo apt update

# Install the unzip package, which is required to install the AWS CLI
sudo apt install unzip -y

# Download the AWS CLI installer
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Unzip the installer
unzip awscliv2.zip

# Run the installer
sudo ./aws/install

# Verify the installation
aws --version
This should display the version of AWS CLI installed, confirming that the installation was successful.

**2. Configure the AWS CLI**
After installation, configure the AWS CLI by running:

bash
aws configure
You will be prompted to enter your AWS Access Key ID, Secret Access Key, Region, and Output format. Make sure you have these details ready.

**3. Install Terraform in GitHub Codespaces**
To install Terraform, follow these steps:


# Download the latest Terraform binary package
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# Install the Terraform package
sudo apt update && sudo apt install terraform -y

# Verify the installation
terraform -v


# Verifying Installations in Codespaces
Once everything is installed, use these commands to verify:

aws --version
terraform -v
