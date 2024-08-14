pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t my-image .'
            }
        }

        stage('Transfer') {
            steps {
                sh 'scp docker/image.tar user@remote-server:/home/user/'
            }
        }

        stage('Run') {
            steps {
                sshagent(['remote-server-key']) {
                    sh 'ssh user@remote-server "docker load -i /home/user/image.tar && docker run -d -p 8080:80 my-image"'
                }
            }
        }
    }
}
