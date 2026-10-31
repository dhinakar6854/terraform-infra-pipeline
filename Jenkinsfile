
pipeline {
    agent any

    options {
        skipDefaultCheckout(true)
    }

    environment {
        TF_WORKDIR = "environment/${env.BRANCH_NAME}"
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: "${env.BRANCH_NAME}",
                    url: 'https://github.com/dhinakar6854/terraform-infra-pipeline.git'
            }
        }

        stage('Terraform Init') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Format') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform fmt -check -recursive'
                }
            }
        }

        stage('Terraform Validate') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform validate'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }

        stage('Approval') {
            /*
            when {
                branch 'production'
            }
            */
            steps {
                input message: 'Approve the deployment to production?',
                      ok: 'Deploy'
            }
        }

        stage('Terraform Apply') {
            when {
                branch 'production'
            }
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform apply tfplan'
                }
            }
        }
    }
}
