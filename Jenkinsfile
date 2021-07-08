pipeline {
    agent any
    stages {
    stage('Docker build') {
  
        steps {
            sh 'docker build -t deb_apache1 .'
            sh 'docker tag deb_apache nns15899/m1test'
            
        }
        
    }

    stage('Push image to DockerHub') {
        steps {
            withDockerRegistry([credentialsId: "dockerHub", url: "" ]) {

                sh 'docker push nns15899/m1test'          
            }         
        }
    }
    stage ('run Docker container on jenkins agent') {
        steps {
            sh 'docker run -d -p 8023:80 deb_apache1 nns15899/m1test'
        }
    }
    }
}
