:: install tools Dzmitry Lahoda uses for development as for current

:: support
choco install debugdiagnostic -y

:: git
choco install git -y
choco install tortoisegit  -y


:: Mercury
choco install tortoisehg  -y

:: portable
choco install jdk8 -y
choco install eclipse  -y
choco install rust -pre
eclipse -application org.eclipse.equinox.p2.director -repository http://rustdt.github.io/releases/ -installIU com.github.rustdt.feature.group
choco install codeblocks  -y

:: Windows
choco install windows-sdk-8.1  -y
choco install wixtoolset -y

:: .NET
choco install microsoft-build-tools  -y
choco install netfx-4.5.2-devpack -y
choco install sharpdevelop  -y
choco install nugetpackageexplorer -y
choco install ilspy -y
choco install specflow -y
choco install xamarin-studio -y
choco install snoop -y

:: automation
choco install seleniumiedriver -y

:: network
choco install fiddler -y
choco install winpcap -y
choco install wireshark -y

:: mobile
choco install android-sdk -y
::TODO: autoinstall adb
::TODO: add to path c:\Users\<USER NAME>\AppData\Local\Android\android-sdk\platform-tools\adb.exe

:: installs IIS with .NET based features with no legacy (omits IIS-ASP;IIS-CGI;IIS-ODBCLogging;IIS-IIS6ManagementCompatibility;IIS-LegacyScripts;IIS-LegacySnapIn;IIS-FTPPublishingService;IIS-FTPServer;IIS-FTPManagement)
:: TODO: replace with usage of  DISM see http://forums.iis.net/t/1176358.aspx and https://msdn.microsoft.com/en-us/library/windows/desktop/dd371719.aspx
start /w pkgmgr /iu:IIS-WebServerRole;IIS-WebServer;IIS-CommonHttpFeatures;IIS-StaticContent;IIS-DefaultDocument;IIS-DirectoryBrowsing;IIS-HttpErrors;IIS-HttpRedirect;IIS-ApplicationDevelopment;IIS-ASPNET;IIS-NetFxExtensibility;IIS-ISAPIExtensions;IIS-ISAPIFilter;IIS-ServerSideIncludes;IIS-HealthAndDiagnostics;IIS-HttpLogging;IIS-LoggingLibraries;IIS-RequestMonitor;IIS-HttpTracing;IIS-CustomLogging;IIS-Security;IIS-BasicAuthentication;IIS-WindowsAuthentication;IIS-DigestAuthentication;IIS-ClientCertificateMappingAuthentication;IIS-IISCertificateMappingAuthentication;IIS-URLAuthorization;IIS-RequestFiltering;IIS-IPSecurity;IIS-Performance;IIS-HttpCompressionStatic;WAS-WindowsActivationService;WAS-ProcessModel;WAS-NetFxEnvironment;WAS-ConfigurationAPI;IIS-HttpCompressionDynamic;IIS-WebServerManagementTools;IIS-ManagementConsole;IIS-ManagementScriptingTools;IIS-ManagementService;IIS-Metabase;IIS-WMICompatibility
echo %errorlevel%





