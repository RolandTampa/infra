pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
        TF_DIR                = 'infra'
    }

    // GitHub plugin fires this pipeline on every push via webhook
    triggers {
        githubPush()
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
                echo "Branch: ${env.BRANCH_NAME} | Commit: ${env.GIT_COMMIT[0..6]}"
            }
        }

        stage('Terraform Init') {
            steps {
                dir("${TF_DIR}") {
                    sh 'terraform init -input=false -backend-config=backend.config'
                }
            }
        }

        stage('Terraform Validate') {
            steps {
                dir("${TF_DIR}") {
                    sh 'terraform validate'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir("${TF_DIR}") {
                    sh 'terraform plan -input=false -out=tfplan'
                    sh 'terraform show -no-color tfplan > tfplan.txt'
                }
                archiveArtifacts artifacts: "${TF_DIR}/tfplan.txt"
            }
        }

        stage('Approval') {
            // Gate apply behind a manual approval on main only
            when {
                branch 'main'
            }
            steps {
                input message: 'Review the plan above. Apply infrastructure changes?',
                      ok: 'Apply'
            }
        }

        stage('Terraform Apply') {
            when {
                branch 'main'
            }
            steps {
                dir("${TF_DIR}") {
                    sh 'terraform apply -input=false -auto-approve tfplan'
                }
            }
        }
    }

    post {
        success {
            echo "Infrastructure deployment succeeded on branch ${env.BRANCH_NAME}"
        }
        failure {
            echo "Infrastructure deployment FAILED on branch ${env.BRANCH_NAME} — check logs above"
        }
        always {
            cleanWs()
        }
    }
}
