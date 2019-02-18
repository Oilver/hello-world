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
                bat 'mvn -B -DskipTests clean package'
            }
        }
        stage('test') {
            tools {
                maven 'Maven 3.0.4'
                jdk 'SunJDK Latest_win'
            }
            steps {
                 echo 'test junit'
                 bat 'mvn test'
            }
            post {
            	 always {
            	    junit 'target/surefire-reports/*.xml'
            	 }
            }
        }
        stage('deploy') {
            steps {
                echo 'test deploy'

            }
        }
    }
}