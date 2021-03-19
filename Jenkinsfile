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
            }
        }
        stage('Deploy') {
            steps {
                echo 'deploying 🚀'
                // Static ip for mock server is 172.20.0.22     
                // sh 'sshpass -p \'testtest\' ssh root@172.20.0.22'
                // sh 'echo "hoi"'
                sh 'sshpass -p \"testtest\" rsync -azP ~/rsync_things/ root@172.30.0.2:~/rsync_stuff/'
                // sh 'sshpass -p ‘testest’ rsync --progress -avz -e ssh root@172.30.0.2:~/rsync_stuff/ ~/rsync_things/'
            }
        }
    }
}
