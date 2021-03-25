pipeline {
    agent {
        label 'slaveci7'
    }

    stages {
        stage('Deploy') {
            steps {
                withCredentials([
                    usernamePassword(
                    credentialsId: 'rsync-deploy-monitoring', 
                    usernameVariable: 'RSYNC_USERNAME', 
                    passwordVariable: 'RSYNC_PASSWORD')]) {

                    sh 'sshpass -p "$RSYNC_PASSWORD" rsync -vai "mock_data.txt" "$RSYNC_USERNAME"@' + params.Target_Hostname + ':rsync_test_mauro/'
                }   
            }
        }
    }
}