	pipeline {
	 agent any

	 stages {
	 stage('checkout') {
	 steps {
	 git branch: 'master', url: 'https://github.com/Disha-Parikh/terraform_jenkins.git'}
	 }





	 stage("Provision infrastructure") {

	 steps {
	     tool name: 'terraform'
         sh 'terraform init'
         sh 'terraform plan -out=plan'
         sh 'terraform apply plan'
         }
        }
	 }



	 }
