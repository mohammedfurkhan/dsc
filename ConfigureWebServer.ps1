Configuration WebServerConfig {
    Node 'dscvm' {
        WindowsFeature IIS {
            Name = 'Web-Server'
            Ensure = 'Present'
        }

        File WebsiteContent {
            DestinationPath = 'C:\inetpub\wwwroot\mywebsite'
            SourcePath = 'C:\Source\Website'
            Ensure = 'Present'
        }
    }
}
