:: install tools Dzmitry Lahoda uses for development as for current
::TODO: make Process Hacker default tool for Power User.


eclipse -application org.eclipse.equinox.p2.director -repository http://rustdt.github.io/releases/ -installIU com.github.rustdt.feature.group

:: installs IIS with .NET based features with no legacy (omits IIS-ASP;IIS-CGI;IIS-ODBCLogging;IIS-IIS6ManagementCompatibility;IIS-LegacyScripts;IIS-LegacySnapIn;IIS-FTPPublishingService;IIS-FTPServer;IIS-FTPManagement)
:: TODO: replace with usage of  DISM see http://forums.iis.net/t/1176358.aspx and https://msdn.microsoft.com/en-us/library/windows/desktop/dd371719.aspx
start /w pkgmgr /iu:IIS-WebServerRole;IIS-WebServer;IIS-CommonHttpFeatures;IIS-StaticContent;IIS-DefaultDocument;IIS-DirectoryBrowsing;IIS-HttpErrors;IIS-HttpRedirect;IIS-ApplicationDevelopment;IIS-ASPNET;IIS-NetFxExtensibility;IIS-ISAPIExtensions;IIS-ISAPIFilter;IIS-ServerSideIncludes;IIS-HealthAndDiagnostics;IIS-HttpLogging;IIS-LoggingLibraries;IIS-RequestMonitor;IIS-HttpTracing;IIS-CustomLogging;IIS-Security;IIS-BasicAuthentication;IIS-WindowsAuthentication;IIS-DigestAuthentication;IIS-ClientCertificateMappingAuthentication;IIS-IISCertificateMappingAuthentication;IIS-URLAuthorization;IIS-RequestFiltering;IIS-IPSecurity;IIS-Performance;IIS-HttpCompressionStatic;WAS-WindowsActivationService;WAS-ProcessModel;WAS-NetFxEnvironment;WAS-ConfigurationAPI;IIS-HttpCompressionDynamic;IIS-WebServerManagementTools;IIS-ManagementConsole;IIS-ManagementScriptingTools;IIS-ManagementService;IIS-Metabase;IIS-WMICompatibility
echo %errorlevel%







