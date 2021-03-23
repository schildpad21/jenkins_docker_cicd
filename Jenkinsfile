pipeline {
    agent {
        // Only run on dedicated linux slave
        label 'slaveci7'
    }

    stages {
        // stage('Build') {
        //     steps {
        //         echo 'Building..'
        //     }
        // }
        // stage('Test') {
        //     steps {
        //         echo 'Testing..'
        //     }
        // }
        stage('Deploy') {
            steps {
                echo 'deploying'
                sh rsync ${WORKSPACE}/ --progress --dry -avz ~/rsync_stuff/
                
                sh "echo ${WORKSPACE}"
                sh "ls -al"
            }
        }
    }
}
