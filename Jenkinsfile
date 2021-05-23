pipeline{
    agent any;
    stages{
        stage('bhargav cloning git'){
            steps{
                git credentialsId: 'Bhargav-creds', url: 'https://github.com/bhargavt16/node-hello.git'
            }
            
        }
        stage("Install node modules"){
            steps{
                sh "npm install"
            }
        }
        stage("Build Docker image"){
            steps{
                sh "docker build . -t bhargavt16/bhargav-node:v5"
            }
        }
        stage("Push docker image"){
            steps{
                sh "docker push bhargavt16/bhargav-node:v5"
            }
        }
        stage("Run the application"){
            steps{
                sh "docker run -p 3000:3000 -d bhargavt16/bhargav-node:v5"
            }
        }
    }
}
