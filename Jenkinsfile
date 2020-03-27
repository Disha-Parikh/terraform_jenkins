pipeline {
 agent any

 stages {
 stage(‘checkout’) {
 steps {
 git branch: ‘master’, url: ‘https://github.com/Disha-Parikh/terraform_jenkins.git’

 }
 }
 stage(‘Set Terraform path’) {
 steps {
 script {
 def tfHome = tool name: ‘Terraform’
 env.PATH = “${tfHome}:${env.PATH}”
 }
 sh ‘terraform —version’


 }
 }

 stage(‘Provision infrastructure’) {

 steps {
 dir(‘terraform_jenkins’)
 {
 sh ‘terraform init’
 sh ‘terraform plan -out=plan’
 sh ‘terraform apply plan’
 }


 }
 }



 }
}