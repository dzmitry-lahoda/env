:: install tools Dzmitry Lahoda uses for development as for current

:: support
choco install sysinternals
choco install processhacker
choco install debugdiagnostic 
choco install imdisk 
choco install sqlite.shell 

:: git
choco install git -y
choco install tortoisegit  -y

:: TFS
choco install visualstudio2013teamexplorer  -y
:: http://stackoverflow.com/questions/12866832/whats-the-difference-between-git-tf-and-git-tfs
::choco install git-tf 
choco install gittfs  -y
set PATH=%PATH%;C:\tools\gittfs

:: Mercury
choco install tortoisehg  -y

:: portable
choco install jdk8 
choco install eclipse
choco install rust -pre
eclipse -application org.eclipse.equinox.p2.director -repository http://rustdt.github.io/releases/ -installIU com.github.rustdt.feature.group
choco install codeblocks 

:: Windows
choco install windows-sdk-8.1 


:: .NET
choco install microsoft-build-tools 
choco install netfx-4.5.1-devpack 
choco install sharpdevelop  -y
choco install nugetpackageexplorer -y
choco install ilspy -y
choco install specflow 

:: automation
choco install seleniumiedriver

:: network
choco install fiddler
choco install winpcap 
choco install wireshark 

:: mobile
choco install android-sdk 

:: installs IIS with .NET based features with no legacy (omits IIS-ASP;IIS-CGI;IIS-ODBCLogging;IIS-IIS6ManagementCompatibility;IIS-LegacyScripts;IIS-LegacySnapIn;IIS-FTPPublishingService;IIS-FTPServer;IIS-FTPManagement)
:: TODO: replace with usage of  DISM see http://forums.iis.net/t/1176358.aspx and https://msdn.microsoft.com/en-us/library/windows/desktop/dd371719.aspx
start /w pkgmgr /iu:IIS-WebServerRole;IIS-WebServer;IIS-CommonHttpFeatures;IIS-StaticContent;IIS-DefaultDocument;IIS-DirectoryBrowsing;IIS-HttpErrors;IIS-HttpRedirect;IIS-ApplicationDevelopment;IIS-ASPNET;IIS-NetFxExtensibility;IIS-ISAPIExtensions;IIS-ISAPIFilter;IIS-ServerSideIncludes;IIS-HealthAndDiagnostics;IIS-HttpLogging;IIS-LoggingLibraries;IIS-RequestMonitor;IIS-HttpTracing;IIS-CustomLogging;IIS-Security;IIS-BasicAuthentication;IIS-WindowsAuthentication;IIS-DigestAuthentication;IIS-ClientCertificateMappingAuthentication;IIS-IISCertificateMappingAuthentication;IIS-URLAuthorization;IIS-RequestFiltering;IIS-IPSecurity;IIS-Performance;IIS-HttpCompressionStatic;WAS-WindowsActivationService;WAS-ProcessModel;WAS-NetFxEnvironment;WAS-ConfigurationAPI;IIS-HttpCompressionDynamic;IIS-WebServerManagementTools;IIS-ManagementConsole;IIS-ManagementScriptingTools;IIS-ManagementService;IIS-Metabase;IIS-WMICompatibility
echo %errorlevel%





