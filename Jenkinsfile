pipeline{
    agent any

    tools {
         maven 'maven'
         jdk 'java'
    }
                sh 'echo "This is a Build stage"'
                sh 'chmod +x install_java_maven.sh'
                sh './install_java_maven.sh'
    stages{
        stage('checkout'){
            steps{
                sh 'echo "This is a Build stage"'
                sh 'chmod +x install_java_maven.sh'
                sh './install_java_maven.sh'

                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'github access', url: 'https://github.com/sreenivas449/java-hello-world-with-maven.git']]])
            }
        }
        stage('build'){
            steps{
               bat 'mvn package'
            }
        }
    }
}
