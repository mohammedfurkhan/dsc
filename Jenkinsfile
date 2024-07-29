pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/mohammedfurkhan/dsc.git', branch: 'main'
            }
        }
        stage('Run DSC') {
            steps {
                script {
                    // Execute the DSC script to apply the configuration
                    powershell '''
                    .\\ConfigureWebServer.ps1
                    Start-DscConfiguration -Path C:\\DSC\\WebServerConfig -Wait -Verbose -Force
                    '''
                }
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
