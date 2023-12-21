pipeline {   
  agent any  
  stages {         
    stage("Git Checkout"){           
      steps{                
	checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/yaseenshareef7/Terraform-learning.git']]])              
	echo 'Git Checkout Completed'            
      }        
    }
     
    stage('Build Docker Image') {         
      steps{
	sh 'sudo docker build -t yaseenshareef7/myregistry:$BUILD_NUMBER .'           
        echo 'Build Image Completed'                
      }           
    }         
    stage('Push Image to Docker Hub') {         
      steps{
withDockerRegistry([ credentialsId: "yaseenshareef7", url: "" ]) {
	sh 'sudo docker push yaseenshareef7/myregistry:$BUILD_NUMBER'                 
	echo 'Push Image Completed'       
      }           
    }      
  } 
  post{
    always {  
      sh 'docker logout'           
    }      
  }  
}
}//pipeline
