pipeline {
   agent any

   tools {
      // Install the Maven version configured as "M3" and add it to the path.
      maven "M2"
   }

   stages {
        stage('SCM Checkout'){
			git url: 'https://github.com/MithunTechnologiesDevOps/spring-boot-mongo-docker.git',branch: 'master'
		}
      }
}
