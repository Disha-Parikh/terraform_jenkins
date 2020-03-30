	pipeline {
	 agent any

	 stages {
	 stage('checkout') {
	 steps {
	 git branch: 'master', url: 'https://github.com/Disha-Parikh/terraform_jenkins.git'}
	 }





	 stage("Provision infrastructure") {
	 steps {
         sh 'terraform init'
         sh "TF_VAR_access_key=${AWS_ACESS_KEY_ID} TF_VAR_secret=${AWS_SECRET_ACCESS_KEY} terraform plan -out=plan"
         sh 'terraform apply plan'
         sh 'TF_VAR_access_key=${AWS_ACESS_KEY_ID} TF_VAR_secret=${AWS_SECRET_ACCESS_KEY} terraform destroy -auto-approve'
         }
        }
	 }



	 }
