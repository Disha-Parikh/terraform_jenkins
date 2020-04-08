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
<<<<<<< HEAD
         sh "TF_VAR_access_key=${AWS_ACESS_KEY_ID} TF_VAR_secret=${AWS_SECRET_ACCESS_KEY} TF_VAR_private_key=${private_key} terraform plan -out=plan"
         sh 'terraform apply plan'
=======
         sh "TF_VAR_access_key=${AWS_ACESS_KEY_ID} TF_VAR_secret=${AWS_SECRET_ACCESS_KEY} terraform plan -out=plan"

>>>>>>> 35fa2d1ac955eb41412ec3d67f84b60ad1da26fa

            script{
              def userinput = input(
                id: 'userInput', message: 'Do you want to destroy existing infrastructure?', parameters: [
                [$class: 'TextParameterDefinition', defaultValue: 'no', description: 'Environment', name: 'Opinion']
               ])
                echo (userinput)

                if(userinput=="yes"){
<<<<<<< HEAD
                                         sh 'TF_VAR_access_key=${AWS_ACESS_KEY_ID} TF_VAR_secret=${AWS_SECRET_ACCESS_KEY} TF_VAR_private_key=${private_key}  terraform destroy -auto-approve'
=======
                                         sh 'TF_VAR_access_key=${AWS_ACESS_KEY_ID} TF_VAR_secret=${AWS_SECRET_ACCESS_KEY} terraform destroy -auto-approve'
>>>>>>> 35fa2d1ac955eb41412ec3d67f84b60ad1da26fa
                            }
                            else{
                                echo "Infrastructure stands as it is!"
                            }

            }

         }
        }
	 }



	 }
