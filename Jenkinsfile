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
                sh "sshpass -p \"testtest\" rsync ${WORKSPACE}/mijn_mooie_pipeline_main/ --progress -avz root@172.20.0.22:~/rsync_stuff/"
            }
        }
    }
}
