pipeline {
    agent any

    environment {
        ARM_CLIENT_ID       = credentials('azure-client-id')
        ARM_CLIENT_SECRET   = credentials('azure-client-secret')
        ARM_SUBSCRIPTION_ID = credentials('azure-subscription-id')
        ARM_TENANT_ID       = credentials('azure-tenant-id')
    }

    stages {

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan' 
            }
        }

        stage('Terraform Apply') {
            steps {
                    input message: "Approve to apply changes?"
                    sh 'terraform apply -auto-approve tfplan'
            }
        }
    }

    post {
        success {
            echo "Provisioning completed successfully!"
        }
        failure {
            echo "Something went wrong."
        }
    }
}
