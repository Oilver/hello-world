pipeline {
    agent {node {label 'enjkswprdap6001' }}
    stages {
        stage('Build') {
            tools {
                maven 'Maven 3.0.4'
                jdk 'SunJDK Latest_win'
            }
            steps {
                echo 'test build'
                sh 'mvn -B -DskipTests clean package'
            }
        }
    }
}