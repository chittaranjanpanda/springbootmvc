pipeline {
   agent any

   /**tools {
      // Install the Maven version configured as "M2" and add it to the path.
      maven "M2"
   } **/

   stages {
        stage('SCM Checkout'){
		 steps {
			git url: 'https://github.com/MithunTechnologiesDevOps/spring-boot-mongo-docker.git',branch: 'master'
		 }
		}
		
		stage(" Maven Clean Package"){
			steps {
				script {
					def mavenHome =  tool name: "M2"
					def mavenCMD = "${mavenHome}/bin/mvn"
					sh "${mavenCMD} clean package"
				}
			}
		}
		
		stage('Build Docker Image'){
			steps {
				sh 'docker build -t chittaranjanpanda/demoapp:$BUILD_NUMBER .'
			}
		}
		
		stage('Push Docker Image'){
			withCredentials([string(credentialsId: 'DOCKER_HUB_PASSWORD', variable: 'DOCKER_HUB_PASSWORD')]) {
				sh "docker login -u chittaranjanpanda -p ${DOKCER_HUB_PASSWORD}"
			}
			steps {
				sh 'chittaranjanpanda/demoapp:$BUILD_NUMBER'
			}
		}
      }
}
