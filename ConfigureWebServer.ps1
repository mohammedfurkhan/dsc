Configuration WebServerConfig {
    Import-DscResource -ModuleName PSDesiredStateConfiguration

    Node "YourVMName" {
        WindowsFeature IIS {
            Ensure = "Present"
            Name = "dscvm"
        }

        File WebsiteContent {
            Ensure          = "Present"
            Type            = "Directory"
            DestinationPath = "C:\\inetpub\\wwwroot\\mywebsite"
            SourcePath      = "\\\\fileserver\\content\\mywebsite"
        }
    }
}

# Generate the MOF files for the configuration
WebServerConfig -OutputPath "C:\\DSC\\WebServerConfig"
