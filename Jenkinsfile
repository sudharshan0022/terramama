pipeline {
  agent any

  environment {
    AWS_ACCESS_KEY_ID = 'AKIA3BA4ESYL324CDL67'
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
