
pipeline{
    tools{
        jdk 'myjava'
        maven 'mymaven'
    }
	agent any
      stages{
           stage('Checkout'){
	       agent{label 'JenkinsSlave1'}
               steps{
		 echo 'cloning..'
                 git 'https://github.com/Sonal0409/DevOpsClassCodes.git'
              }
          }
          stage('Compile'){
              agent{label 'JenkinsSlave1'}
              steps{
                  echo 'compiling..'
                  sh 'mvn compile'
	      }
          }
          stage('CodeReview'){
	      agent{label 'JenkinsSlave1'}
              steps{
		    
		  echo 'codeReview'
                  sh 'mvn pmd:pmd'
              }
          }
           stage('UnitTest'){
	      agent{label 'JenkinsSlave1'}
              steps{
	         echo 'Testing'
                  sh 'mvn test'
              }
               post {
               success {
                   junit 'target/surefire-reports/*.xml'
               }
           }	
          }
           
          stage('Package'){
	      agent{label 'JenkinsSlave1'}  
              steps{
		  
                  sh 'mvn package'
              }
          }
	     
          
      }
}
