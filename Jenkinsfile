pipeline {   
  agent any  
  stages {         
    stage("Git Checkout"){           
      steps{                
	checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/yaseenshareef7/Terraform-learning.git']]])              
	echo 'Git Checkout Completed'            
      }        
    }
      stage('Docker Build and Tag') {
           steps {
              
                sh 'docker build -t myimage:1.0 .' 
                  sh 'docker tag myimage yaseenshareef7/myregistry:1.0'
                sh 'docker tag myimage yaseenshareef7/myregistry:$BUILD_NUMBER'
               
          }
        }
     
  stage('Publish image to Docker Hub') {
          
            steps {
        withDockerRegistry([ credentialsId: "yaseenshareef7", url: "" ]) {
          sh  'docker push yaseenshareef7/myregistry:1.0'
          sh  'docker push yaseenshareef7/myregistry:$BUILD_NUMBER' 
        }
                  
          }
        }
  }
}
