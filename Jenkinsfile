node {
    def app

    stage('Clone repository') {
      

        checkout scm
    }

    stage('Docker build') {
  
        steps {
            sh 'docker build -t deb_apache1 .'
            sh 'docker tag deb_apache nns15899/m1test'
            
        }
        
    }


    stage('Push image') {
        
        docker.withRegistry('https://registry.hub.docker.com', 'git') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
