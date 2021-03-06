:If you want to generate files, you need:
:.NET Framework (SDK) version 2.0 (x64) https://www.microsoft.com/en-us/download/details.aspx?id=15354 (manully unzip setup.exe and click install.msi)
:(WSE) 3.0 for Microsoft .NET https://www.microsoft.com/en-us/download/details.aspx?id=14089
: Put your future functions in your "*.asmx.cs" files, and then rebuild your project
: Install SolidCP EnterpriseServer && Server (and ofcourse update it with last your bin libs)
: Works on the OS Windows 2012R2 (possibly on Windows 10/2016)
: I recommend generating one file at a time (or group of files), to prevent conflicts. (delete "REM" before the files you want to generate) <--- delete this comment after generating all the files.
SET WSDL="%ProgramFiles(x86)%\Microsoft WSE\v3.0\Tools\WseWsdl3.exe"
SET WSE_CLEAN=..\Tools\WseClean.exe
SET SERVER_URL=http://127.0.0.1:9002

REM %WSDL% %SERVER_URL%/esApplicationsInstaller.asmx /out:.\SolidCP.EnterpriseServer.Client\ApplicationsInstallerProxy.cs /namespace:SolidCP.EnterpriseServer.ApplicationsInstaller /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\ApplicationsInstallerProxy.cs

REM %WSDL% %SERVER_URL%/esAuditLog.asmx /out:.\SolidCP.EnterpriseServer.Client\AuditLogProxy.cs /namespace:SolidCP.EnterpriseServer.AuditLog /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\AuditLogProxy.cs

REM %WSDL% %SERVER_URL%/esAuthentication.asmx /out:.\SolidCP.EnterpriseServer.Client\AuthenticationProxy.cs /namespace:SolidCP.EnterpriseServer.Authentication /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\AuthenticationProxy.cs

REM %WSDL% %SERVER_URL%/esBackup.asmx /out:.\SolidCP.EnterpriseServer.Client\BackupProxy.cs /namespace:SolidCP.EnterpriseServer.Backup /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\BackupProxy.cs

REM %WSDL% %SERVER_URL%/esBlackBerry.asmx /out:.\SolidCP.EnterpriseServer.Client\BlackBerryProxy.cs /namespace:SolidCP.EnterpriseServer.BlackBerry /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\BlackBerryProxy.cs

REM %WSDL% %SERVER_URL%/esComments.asmx /out:.\SolidCP.EnterpriseServer.Client\CommentsProxy.cs /namespace:SolidCP.EnterpriseServer.Comments /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\CommentsProxy.cs

REM %WSDL% %SERVER_URL%/esCRM.asmx /out:.\SolidCP.EnterpriseServer.Client\CRMProxy.cs /namespace:SolidCP.EnterpriseServer.CRM /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\CRMProxy.cs

REM %WSDL% %SERVER_URL%/esDatabaseServers.asmx /out:.\SolidCP.EnterpriseServer.Client\DatabaseServersProxy.cs /namespace:SolidCP.EnterpriseServer.DatabaseServers /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\DatabaseServersProxy.cs

REM %WSDL% %SERVER_URL%/esEnterpriseStorage.asmx /out:.\SolidCP.EnterpriseServer.Client\EnterpriseStorageProxy.cs /namespace:SolidCP.EnterpriseServer.EnterpriseStorage /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\EnterpriseStorageProxy.cs

REM %WSDL% %SERVER_URL%/esExchangeServer.asmx /out:.\SolidCP.EnterpriseServer.Client\ExchangeServerProxy.cs /namespace:SolidCP.EnterpriseServer.ExchangeServer /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\ExchangeServerProxy.cs

REM %WSDL% %SERVER_URL%/esFiles.asmx /out:.\SolidCP.EnterpriseServer.Client\FilesProxy.cs /namespace:SolidCP.EnterpriseServer.Files /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\FilesProxy.cs

REM %WSDL% %SERVER_URL%/esFtpServers.asmx /out:.\SolidCP.EnterpriseServer.Client\FtpServersProxy.cs /namespace:SolidCP.EnterpriseServer.FtpServers /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\FtpServersProxy.cs

REM %WSDL% %SERVER_URL%/esHeliconZoo.asmx /out:.\SolidCP.EnterpriseServer.Client\HeliconZooProxy.cs /namespace:SolidCP.EnterpriseServer.HeliconZoo /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\HeliconZooProxy.cs

REM %WSDL% %SERVER_URL%/esHostedSharePointServers.asmx /out:.\SolidCP.EnterpriseServer.Client\HostedSharePointServersProxy.cs /namespace:SolidCP.EnterpriseServer.HostedSharePointServers /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\HostedSharePointServersProxy.cs

REM %WSDL% %SERVER_URL%/esHostedSharePointServersEnt.asmx /out:.\SolidCP.EnterpriseServer.Client\HostedSharePointServersEntProxy.cs /namespace:SolidCP.EnterpriseServer.HostedSharePointServersEnt /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\HostedSharePointServersEntProxy.cs

REM %WSDL% %SERVER_URL%/esImport.asmx /out:.\SolidCP.EnterpriseServer.Client\ImportProxy.cs /namespace:SolidCP.EnterpriseServer.Import /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\ImportProxy.cs

REM %WSDL% %SERVER_URL%/esLync.asmx /out:.\SolidCP.EnterpriseServer.Client\LyncProxy.cs /namespace:SolidCP.EnterpriseServer.Lync /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\LyncProxy.cs

REM %WSDL% %SERVER_URL%/esMailServers.asmx /out:.\SolidCP.EnterpriseServer.Client\MailServersProxy.cs /namespace:SolidCP.EnterpriseServer.MailServers /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\MailServersProxy.cs

REM %WSDL% %SERVER_URL%/esOCS.asmx /out:.\SolidCP.EnterpriseServer.Client\OCSProxy.cs /namespace:SolidCP.EnterpriseServer.OCS /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\OCSProxy.cs

REM %WSDL% %SERVER_URL%/esOperatingSystems.asmx /out:.\SolidCP.EnterpriseServer.Client\OperatingSystemsProxy.cs /namespace:SolidCP.EnterpriseServer.OperatingSystems /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\OperatingSystemsProxy.cs

REM %WSDL% %SERVER_URL%/esOrganizations.asmx /out:.\SolidCP.EnterpriseServer.Client\OrganizationProxy.cs /namespace:SolidCP.EnterpriseServer.Organizations /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\OrganizationProxy.cs

REM %WSDL% %SERVER_URL%/esPackages.asmx /out:.\SolidCP.EnterpriseServer.Client\PackagesProxy.cs /namespace:SolidCP.EnterpriseServer.Packages /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\PackagesProxy.cs

REM %WSDL% %SERVER_URL%/esRemoteDesktopServices.asmx /out:.\SolidCP.EnterpriseServer.Client\RemoteDesktopServicesProxy.cs /namespace:SolidCP.EnterpriseServer.RemoteDesktopServices /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\RemoteDesktopServicesProxy.cs

REM %WSDL% %SERVER_URL%/esScheduler.asmx /out:.\SolidCP.EnterpriseServer.Client\SchedulerProxy.cs /namespace:SolidCP.EnterpriseServer.Scheduler /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\SchedulerProxy.cs

REM %WSDL% %SERVER_URL%/esServers.asmx /out:.\SolidCP.EnterpriseServer.Client\ServersProxy.cs /namespace:SolidCP.EnterpriseServer.Servers /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\ServersProxy.cs

REM %WSDL% %SERVER_URL%/esSfB.asmx /out:.\SolidCP.EnterpriseServer.Client\SfBProxy.cs /namespace:SolidCP.EnterpriseServer.SfB /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\SfBProxy.cs

REM %WSDL% %SERVER_URL%/esSharePointServers.asmx /out:.\SolidCP.EnterpriseServer.Client\SharePointServersProxy.cs /namespace:SolidCP.EnterpriseServer.SharePointServers /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\SharePointServersProxy.cs

REM %WSDL% %SERVER_URL%/esStatisticsServers.asmx /out:.\SolidCP.EnterpriseServer.Client\StatisticsServersProxy.cs /namespace:SolidCP.EnterpriseServer.StatisticsServers /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\StatisticsServersProxy.cs

REM %WSDL% %SERVER_URL%/esStorageSpaces.asmx /out:.\SolidCP.EnterpriseServer.Client\StorageSpacesProxy.cs /namespace:SolidCP.EnterpriseServer.StorageSpaces /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\StorageSpacesProxy.cs

REM %WSDL% %SERVER_URL%/esSystem.asmx /out:.\SolidCP.EnterpriseServer.Client\SystemProxy.cs /namespace:SolidCP.EnterpriseServer.System /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\SystemProxy.cs

REM %WSDL% %SERVER_URL%/esTasks.asmx /out:.\SolidCP.EnterpriseServer.Client\TasksProxy.cs /namespace:SolidCP.EnterpriseServer.Tasks /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\TasksProxy.cs

REM %WSDL% %SERVER_URL%/esUsers.asmx /out:.\SolidCP.EnterpriseServer.Client\UsersProxy.cs /namespace:SolidCP.EnterpriseServer.Users /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\UsersProxy.cs

REM %WSDL% %SERVER_URL%/esVirtualizationServer.asmx /out:.\SolidCP.EnterpriseServer.Client\VirtualizationServerProxy.cs /namespace:SolidCP.EnterpriseServer.VirtualizationServer /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\VirtualizationServerProxy.cs

REM %WSDL% %SERVER_URL%/esVirtualizationServer2012.asmx /out:.\SolidCP.EnterpriseServer.Client\VirtualizationServerProxy2012.cs /namespace:SolidCP.EnterpriseServer.VirtualizationServer2012 /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\VirtualizationServerProxy2012.cs

REM %WSDL% %SERVER_URL%/esVirtualizationServerForPrivateCloud.asmx /out:.\SolidCP.EnterpriseServer.Client\VirtualizationServerProxyForPrivateCloud.cs /namespace:SolidCP.EnterpriseServer.VirtualizationServerForPrivateCloud /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\VirtualizationServerProxyForPrivateCloud.cs

REM %WSDL% %SERVER_URL%/esVirtualizationServerProxmox.asmx /out:.\SolidCP.EnterpriseServer.Client\VirtualizationServerProxyProxmox.cs /namespace:SolidCP.EnterpriseServer.VirtualizationServerProxmox /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\VirtualizationServerProxyProxmox.cs

REM %WSDL% %SERVER_URL%/esWebApplicationGallery.asmx /out:.\SolidCP.EnterpriseServer.Client\WebApplicationGalleryProxy.cs /namespace:SolidCP.EnterpriseServer.WebApplicationGallery /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\WebApplicationGalleryProxy.cs

REM %WSDL% %SERVER_URL%/esWebServers.asmx /out:.\SolidCP.EnterpriseServer.Client\WebServersProxy.cs /namespace:SolidCP.EnterpriseServer.WebServers /type:webClient
REM %WSE_CLEAN% .\SolidCP.EnterpriseServer.Client\WebServersProxy.cs
