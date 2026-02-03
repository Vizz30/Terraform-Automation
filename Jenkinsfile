pipeline {
    agent any

    parameters {
        choice(
            name: 'ACTION',
            choices: ['plan', 'apply', 'destroy'],
            description: 'Select the action to perform'
        )
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scmGit(
                    branches: [[name: '*/main']],
                    extensions: [],
                    userRemoteConfigs: [[url: 'hhttps://github.com/Vizz30/Terraform-Automation.git']]
                )
            }
        }

        stage("terraform init") {
            steps {
                sh("terraform init -reconfigure")
            }
        }

        stage("Action") {
            steps {
                script {
                    switch (params.ACTION) {

                        case 'plan':
                            echo 'Running Terraform Plan'
                            sh 'terraform plan'
                            break

                        case 'apply':
                            echo 'Running Terraform Apply'
                            sh 'terraform apply --auto-approve'
                            break

                        case 'destroy':
                            echo 'Running Terraform Destroy'
                            sh 'terraform destroy --auto-approve'
                            break

                        default:
                            error "Unsupported action: ${params.ACTION}"
                    }
                }
            }
        }
    }
}
