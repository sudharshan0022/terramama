pipeline {
  agent any

  environment {
    AWS_ACCESS_KEY_ID = 'AKIA3BA4ESYL4SP5VH2G'
    AWS_SECRET_ACCESS_KEY = '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'
    AWS_DEFAULT_REGION = 'us-east-1'
  }

  stages {
    stage('git') {
        steps {
            sh 'git init'
            sh "git pull https://github.com/sudharshan0022/terramama.git"
        }
    }
    stage('Terraform Init') {
      steps {
        sh 'terraform init'
      }
    }

    stage('Terraform Plan') {
      steps {
        sh 'terraform plan -out=tfplan'
      }
    }

    stage('Terraform Apply') {
      steps {
        sh 'terraform apply tfplan'
      }
    }
  }
}
