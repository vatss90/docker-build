pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('vatss90')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t vatss90/nginx:ver3 .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push vatss90/nginx:ver3'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
