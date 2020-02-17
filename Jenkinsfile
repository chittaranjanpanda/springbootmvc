pipeline {
   agent any

   tools {
      // Install the Maven version configured as "M2" and add it to the path.
      maven "M2"
   }

   stages {
        stage('SCM Checkout'){
		 steps {
			git url: 'https://github.com/MithunTechnologiesDevOps/spring-boot-mongo-docker.git',branch: 'master'
		 }
		}
      }
}
