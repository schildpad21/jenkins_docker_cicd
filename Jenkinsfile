pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building.. 🧱 '
            }
        }
        stage('Test') {
            steps {
                echo 'Testing.. 🧪'
                // Yes needed for key authentication, probably causes the passoword to be wrong if the key is already set
                sh 'sshpass -p \'testtest\' ssh root@172.30.0.2'
                // sh 'sshpass -p ‘testest’ rsync --progress -avz -e ssh root@172.30.0.2:~/rsync_stuff/ ~/rsync_things/'
            }
        }
        stage('Deploy') {
            steps {
                echo 'deploying 🚀'
            }
        }
    }
}
