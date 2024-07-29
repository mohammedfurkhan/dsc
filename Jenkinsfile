pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout DSC configuration from Git repository
                git 'https://github.com/mohammedfurkhan/dsc.git'
            }
        }

        stage('Run DSC') {
            steps {
                script {
                    // Define DSC configuration path
                    def dscConfigPath = 'C:\DSC\WebServerConfig'

                    // Run DSC configuration using PowerShell
                    powershell """
                        Start-DscConfiguration -Path ${dscConfigPath} -Wait -Verbose
                    """
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
