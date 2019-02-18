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
                sshPublisher(publishers: [sshPublisherDesc(configName: 'dcdevap814', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '**/install.sh')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
                sshPublisher(publishers: [sshPublisherDesc(configName: 'dcdevap814', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '**/com.deng-1.0-SNAPSHOT.jar')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
                sshPublisher(publishers: [sshPublisherDesc(configName: 'dcdevap814', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'sudo cp /home/MSDOMAIN1/msdeployqa/install.sh /data/', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
                sshPublisher(publishers: [sshPublisherDesc(configName: 'dcdevap814', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'sudo cp /home/MSDOMAIN1/msdeployqa/target/com.deng-1.0-SNAPSHOT.jar /data/', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
                sshPublisher(publishers: [sshPublisherDesc(configName: 'dcdevap814', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'sudo dos2unix /data/install.sh', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
                sshPublisher(publishers: [sshPublisherDesc(configName: 'dcdevap814', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'sudo sh /data/install.sh', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }
    }
}