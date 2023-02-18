pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('vatss90')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t vatss90/nginx:ver5 .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push vatss90/nginx:ver5'
			}
		}
		stage('Pull') {

			steps {
				sh 'docker pull vatss90/nginx:ver5'
			}
		}
		stage('deploy') {

			steps {
				sh 'docker run -itd -p 8083:80 --name sunil vatss90/nginx:ver5'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
