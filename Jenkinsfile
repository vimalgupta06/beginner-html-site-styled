pipeline{
    agent any

    options {
        skipDefaultCheckout()
    }

    stages{
        stage('Checkout'){
            steps{
                checkout scm
            }
        }

        stage('Validate'){
            steps{
                sh 'bash scripts/smoke-test.sh'
            }
        }
    }


}