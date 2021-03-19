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
                sh 'ssshpass -p \'testtest\' ssh root@172.30.0.2'
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
