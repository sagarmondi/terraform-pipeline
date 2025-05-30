pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/sagarmondi/terraform-ec2-pipeline.git'
            }
        }

        stage('Init Terraform') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Plan Terraform') {
            steps {
                sh '''
                terraform plan \
                    -var="access_key=$AWS_ACCESS_KEY_ID" \
                    -var="secret_key=$AWS_SECRET_ACCESS_KEY"
                '''
            }
        }

        stage('Apply Terraform') {
            steps {
                sh '''
                terraform apply -auto-approve \
                    -var="access_key=$AWS_ACCESS_KEY_ID" \
                    -var="secret_key=$AWS_SECRET_ACCESS_KEY"
                '''
            }
        }
    }
}
