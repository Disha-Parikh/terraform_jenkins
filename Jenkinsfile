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


            script{
              def userinput = input(
                id: 'userInput', message: 'Do you want to destroy existing infrastructure?', parameters: [
                [$class: 'TextParameterDefinition', defaultValue: 'no', description: 'Environment', name: 'Opinion']
               ])
                echo (userinput)

                if(userinput=="yes"){
                                         sh 'TF_VAR_access_key=${AWS_ACESS_KEY_ID} TF_VAR_secret=${AWS_SECRET_ACCESS_KEY} terraform destroy -auto-approve'
                            }
                            else{
                                echo "Infrastructure stands as it is!"
                            }

            }

         }
        }
	 }



	 }
