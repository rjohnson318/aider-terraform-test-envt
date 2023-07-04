#!/bin/bash

# Wrapper script for deploying Terraform and Terragrunt in Azure Gov

# Set environment variables
export ARM_ENVIRONMENT="usgovernment"
export TF_IN_AUTOMATION="true"

# Check for required command line arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <environment> <component>"
    echo "Example: $0 zone-a hub"
    exit 1
fi

# Set environment and component variables
ENVIRONMENT="$1"
COMPONENT="$2"

# Navigate to the component directory
cd "envs/${ENVIRONMENT}/${COMPONENT}" || exit

# Initialize Terraform project
terragrunt init

# Plan the changes
terragrunt plan

# Apply the changes
terragrunt apply -auto-approve

# Return to the original directory
cd - || exit