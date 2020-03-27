	pipeline {
	 agent any

	 stages {
	 stage('checkout') {
	 steps {
	 git branch: 'master', url: 'https://github.com/Disha-Parikh/terraform_jenkins.git'}
	 }

	 stage('Set Terraform path') {
            steps {
            script {
            echo "HEllo"
            def tfHome = tool name: 'Terraform', type: 'com.cloudbees.jenkins.plugins.customtools.CustomTool'
            env.PATH = "${tfHome}:${env.PATH}"
            echo "REACHED HERE!"
     }
        sh 'terraform —version'
     }
     }



	 stage("Provision infrastructure") {

	 steps {
         dir('terraform_jenkins')
         {
         git clone
         sh 'terraform init'
         sh 'terraform plan -out=plan'
         sh 'terraform apply plan'
         }
        }
	 }



	 }
	}