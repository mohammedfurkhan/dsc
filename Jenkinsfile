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
                    powershell '''
                        # Define variables
                        $configPath = "C:\\DSC\\WebServerConfig"
                        $mofPath = "$configPath\\localhost.mof"

                        # Import DSC configuration
                        Start-DscConfiguration -Path $configPath -Wait -Verbose
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
