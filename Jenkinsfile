pipeline {
    agent any
    stages {
        stage('Download Docker Code From Github') { 
            steps {
                git branch: 'master', credentialsId: 'gutHubCredential', url: 'https://github.com/rajakumarguptatechie/docker.git'
			}    
        }
        stage('Docker Image Build and Tag') {
            steps {
                sh """
                    cd webserver
                    docker build -t testimage:${BUILD_NUMBER} .
                """    
            }
        }/*
        stage('Docker Image Upload to Repository') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'jenkins-dockerhub-credential', passwordVariable: 'passWord', usernameVariable: 'userName')]) {
                    sh "docker push rajakumargupta/websitevisitcount:${BUILD_NUMBER}"
                }
            }
        }
        stage('Docker Image Cleanup from Local host') {
            steps {
                sh "docker rmi rajakumargupta/websitevisitcount:${BUILD_NUMBER} && docker rmi websitevisitcount:${BUILD_NUMBER}"
            }
        }*/
    }    
}
