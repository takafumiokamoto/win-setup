# Prerequisites
# TrustedInstaller privilege
# static IPv4 address
# what disable
# - windows update
# - notification tray and calendar
# - network icon in taskbar
# - notification try and calendar in taskbar
# - language input (possibly)
$automatic = @(
    "AudioEndpointBuilder" #Windows Audio Endpoint Builder
    "Audiosrv" #Windows Audio
    "BrokerInfrastructure" #Background Tasks Infrastructure Service
    "CoreMessagingRegistrar" #CoreMessaging
    "CryptSvc" #Cryptographic Services
    "DcomLaunch" #DCOM Server Process Launcher
    "LSM" #Local Session Manager
    "Power" #Power
    "ProfSvc" #User Profile Service
    "RpcEptMapper" #RPC Endpoint Mapper
    "RpcSs" #Remote Procedure Call (RPC)
    "Schedule" #Task Scheduler
    "sppsvc" #Software Protection
    "SystemEventsBroker" #System Events Broker
    "TextInputManagementService" #Text Input Management Service
    "UserManager" #User Manager
    "Wcmsvc" #Windows Connection Manager
    "Winmgmt" #Windows Management Instrumentatio
    "nsi" #Network Store Interface Service / can not disable, break taskbar
    "Dnscache" #DNS Client / needed for internet connection
    "DispBrokerDesktopSvc" #Display Policy Service / needed for functionality of nvidia display driver
)
$manual = @(
	"DeviceInstall" #Device Install Service
    "Appinfo" #Application Information
    "AppXSvc" #AppX Deployment Service (AppXSVC)
    "camsvc" #Capability Access Manager Service
    "DmEnrollmentSvc" #Device Management Enrollment Service
    "msiserver" #Windows Installer
    "NetSetupSvc" #Network Setup Service
    "StateRepository" #State Repository Service
    "seclogon" #Secondary Logon
    "TimeBrokerSvc" #Time Broker
    "TrustedInstaller" #Windows Modules Installer
    "wlpasvc" #Local Profile Assistant Service
    "WManSvc" #Windows Management Service
    "UdkUserSvc" #UdkUserSvc / can not disable, break windows search from start menu
    "netprofm" #Network List Service / can not disable, break taskbar
)
$disabled = @(
    "BFE" #Base Filtering Engine
    "cbdhsvc" #cbdhsvc
    "CDPSvc" #Connected Devices Platform Service
    "CDPUserSvc" #CDPUserSvc
    "Dhcp" #DHCP Client
    "DiagTrack" #Connected User Experiences and Telemetry
    "DoSvc" #Delivery Optimization
    "DPS" #Diagnostic Policy Service
    "DusmSvc" #Data Usage
    "edgeupdate" #Microsoft Edge Update Service (edgeupdate)
    "EventLog" #Windows Event Log
    "EventSystem" #COM+ Event System
    "FontCache" #Windows Font Cache Service
    "gpsvc" #Group Policy Client
    "iphlpsvc" #IP Helper
    "LanmanServer" #Server
    "LanmanWorkstation" #Workstation
    "MapsBroker" #Downloaded Maps Manager
    "MDCoreSvc" #Microsoft Defender Core Service
    "mpssvc" #Windows Defender Firewall
    "OneSyncSvc" #OneSyncSvc
    "PcaSvc" #Program Compatibility Assistant Service
    "SamSs" #Security Accounts Manager
    "SENS" #System Event Notification Service
    "ShellHWDetection" #Shell Hardware Detection
    "Spooler" #Print Spooler
    "StorSvc" #Storage Service
    "SysMain" #SysMain
    "Themes" #Themes
    "TrkWks" #Distributed Link Tracking Client
    "UsoSvc" #Update Orchestrator Service
    "VGAuthService" #VMware Alias Manager and Ticket Service
    "vm3dservice" #VMware SVGA Helper Service
    "VMTools" #VMware Tools
    "webthreatdefusersvc" #webthreatdefusersvc
    "WinDefend" #Microsoft Defender Antivirus Service
    "WpnService" #Windows Push Notifications System Service
    "WpnUserService" #WpnUserService
    "wscsvc" #Security Center
    "WSearch" #Windows Search
    "AarSvc" #AarSvc
    "AJRouter" #AllJoyn Router Service
    "ALG" #Application Layer Gateway Service
    "AppIDSvc" #Application Identity
    "AppMgmt" #Application Management
    "AppReadiness" #App Readiness
    "AssignedAccessManagerSvc" #AssignedAccessManager Service
    "autotimesvc" #Cellular Time
    "AxInstSV" #ActiveX Installer (AxInstSV)
    "BcastDVRUserService" #BcastDVRUserService
    "BDESVC" #BitLocker Drive Encryption Service
    "BITS" #Background Intelligent Transfer Service
    "BluetoothUserService" #BluetoothUserService
    "BTAGService" #Bluetooth Audio Gateway Service
    "BthAvctpSvc" #AVCTP service
    "bthserv" #Bluetooth Support Service
    "CaptureService" #CaptureService
    "CertPropSvc" #Certificate Propagation
    "ClipSVC" #Client License Service (ClipSVC)
    "CloudBackupRestoreSvc" #CloudBackupRestoreSvc
    "cloudidsvc" #Microsoft Cloud Identity Service
    "COMSysApp" #COM+ System Application
    "ConsentUxUserSvc" #ConsentUxUserSvc
    "CredentialEnrollmentManagerUserSvc" #CredentialEnrollmentManagerUserSvc
    "CscService" #Offline Files
    "dcsvc" #Declared Configuration(DC) service
    "defragsvc" #Optimize drives
    "DeviceAssociationBrokerSvc" #DeviceAssociationBrokerSvc
    "DeviceAssociationService" #Device Association Service
    "DevicePickerUserSvc" #DevicePickerUserSvc
    "DevicesFlowUserSvc" #DevicesFlowUserSvc
    "DevQueryBroker" #DevQuery Background Discovery Broker
    "diagnosticshub.standardcollector.service" #Microsoft (R) Diagnostics Hub Standard Collector Service
    "diagsvc" #Diagnostic Execution Service
    "DisplayEnhancementService" #Display Enhancement Service
    "dmwappushservice" #Device Management Wireless Application Protocol (WAP) Push messag...
    "dot3svc" #Wired AutoConfig
    "DsmSvc" #Device Setup Manager
    "DsSvc" #Data Sharing Service
    "EapHost" #Extensible Authentication Protocol
    "edgeupdatem" #Microsoft Edge Update Service (edgeupdatem)
    "EFS" #Encrypting File System (EFS)
    "embeddedmode" #Embedded Mode
    "EntAppSvc" #Enterprise App Management Service
    "fdPHost" #Function Discovery Provider Host
    "FDResPub" #Function Discovery Resource Publication
    "fhsvc" #File History Service
    "FrameServer" #Windows Camera Frame Server
    "FrameServerMonitor" #Windows Camera Frame Server Monitor
    "GameInputSvc" #GameInput Service
    "GraphicsPerfSvc" #GraphicsPerfSvc
    "hidserv" #Human Interface Device Service
    "HvHost" #HV Host Service
    "icssvc" #Windows Mobile Hotspot Service
    "IKEEXT" #IKE and AuthIP IPsec Keying Modules
    "InstallService" #Microsoft Store Install Service
    "InventorySvc" #Inventory and Compatibility Appraisal service
    "IpxlatCfgSvc" #IP Translation Configuration Service
    "KeyIso" #CNG Key Isolation
    "KtmRm" #KtmRm for Distributed Transaction Coordinator
    "lfsvc" #Geolocation Service
    "LicenseManager" #Windows License Manager Service
    "lltdsvc" #Link-Layer Topology Discovery Mapper
    "lmhosts" #TCP/IP NetBIOS Helper
    "LxpSvc" #Language Experience Service
    "McpManagementService" #McpManagementService
    "MessagingService" #MessagingService
    "MicrosoftEdgeElevationService" #Microsoft Edge Elevation Service (MicrosoftEdgeElevationService)
    "MixedRealityOpenXRSvc" #Windows Mixed Reality OpenXR Service
    "MSDTC" #Distributed Transaction Coordinator
    "MSiSCSI" #Microsoft iSCSI Initiator Service
    "NaturalAuthentication" #Natural Authentication
    "NcaSvc" #Network Connectivity Assistant
    "NcbService" #Network Connection Broker
    "NcdAutoSetup" #Network Connected Devices Auto-Setup
    "Netlogon" #Netlogon
    "Netman" #Network Connections
    "NgcCtnrSvc" #Microsoft Passport Container
    "NgcSvc" #Microsoft Passport
    "NlaSvc" #Network Location Awareness
    "NPSMSvc" #NPSMSvc
    "p2pimsvc" #Peer Networking Identity Manager
    "p2psvc" #Peer Networking Grouping
    "P9RdrService" #P9RdrService
    "PeerDistSvc" #BranchCache
    "PenService" #PenService
    "perceptionsimulation" #Windows Perception Simulation Service
    "PerfHost" #Performance Counter DLL Host
    "PhoneSvc" #Phone Service
    "PimIndexMaintenanceSvc" #PimIndexMaintenanceSvc
    "pla" #Performance Logs & Alerts
    "PlugPlay" #Plug and Play
    "PNRPAutoReg" #PNRP Machine Name Publication Service
    "PNRPsvc" #Peer Name Resolution Protocol
    "PolicyAgent" #IPsec Policy Agent
    "PrintNotify" #Printer Extensions and Notifications
    "PrintWorkflowUserSvc" #PrintWorkflowUserSvc
    "PushToInstall" #Windows PushToInstall Service
    "QWAVE" #Quality Windows Audio Video Experience
    "RasAuto" #Remote Access Auto Connection Manager
    "RasMan" #Remote Access Connection Manager
    "RetailDemo" #Retail Demo Service
    "RmSvc" #Radio Management Service
    "RpcLocator" #Remote Procedure Call (RPC) Locator
    "SCardSvr" #Smart Card
    "ScDeviceEnum" #Smart Card Device Enumeration Service
    "SCPolicySvc" #Smart Card Removal Policy
    "SDRSVC" #Windows Backup
    "SecurityHealthService" #Windows Security Service
    "SEMgrSvc" #Payments and NFC/SE Manager
    "Sense" #Windows Defender Advanced Threat Protection Service
    "SensorDataService" #Sensor Data Service
    "SensorService" #Sensor Service
    "SensrSvc" #Sensor Monitoring Service
    "SessionEnv" #Remote Desktop Configuration
    "SharedAccess" #Internet Connection Sharing (ICS)
    "SharedRealitySvc" #Spatial Data Service
    "smphost" #Microsoft Storage Spaces SMP
    "SmsRouter" #Microsoft Windows SMS Router Service.
    "SNMPTrap" #SNMP Trap
    "spectrum" #Windows Perception Service
    "SSDPSRV" #SSDP Discovery
    "SstpSvc" #Secure Socket Tunneling Protocol Service
    "StiSvc" #Windows Image Acquisition (WIA)
    "svsvc" #Spot Verifier
    "swprv" #Microsoft Software Shadow Copy Provider
    "TapiSrv" #Telephony
    "TermService" #Remote Desktop Services
    "TieringEngineService" #Storage Tiers Management
    "TokenBroker" #Web Account Manager
    "TroubleshootingSvc" #Recommended Troubleshooting Service
    "UmRdpService" #Remote Desktop Services UserMode Port Redirector
    "UnistoreSvc" #UnistoreSvc
    "upnphost" #UPnP Device Host
    "UserDataSvc" #UserDataSvc
    "VacSvc" #Volumetric Audio Compositor Service
    "VaultSvc" #Credential Manager
    "vds" #Virtual Disk
    "vmicguestinterface" #Hyper-V Guest Service Interface
    "vmicheartbeat" #Hyper-V Heartbeat Service
    "vmickvpexchange" #Hyper-V Data Exchange Service
    "vmicrdv" #Hyper-V Remote Desktop Virtualization Service
    "vmicshutdown" #Hyper-V Guest Shutdown Service
    "vmictimesync" #Hyper-V Time Synchronization Service
    "vmicvmsession" #Hyper-V PowerShell Direct Service
    "vmicvss" #Hyper-V Volume Shadow Copy Requestor
    "vmvss" #VMware Snapshot Provider
    "VSS" #Volume Shadow Copy
    "W32Time" #Windows Time
    "WaaSMedicSvc" #WaaSMedicSvc
    "WalletService" #WalletService
    "WarpJITSvc" #Warp JIT Service
    "wbengine" #Block Level Backup Engine Service
    "WbioSrvc" #Windows Biometric Service
    "wcncsvc" #Windows Connect Now - Config Registrar
    "WdiServiceHost" #Diagnostic Service Host
    "WdiSystemHost" #Diagnostic System Host
    "WdNisSvc" #Microsoft Defender Antivirus Network Inspection Service
    "WebClient" #WebClient
    "webthreatdefsvc" #Web Threat Defense Service
    "Wecsvc" #Windows Event Collector
    "WEPHOSTSVC" #Windows Encryption Provider Host Service
    "wercplsupport" #Problem Reports Control Panel Support
    "WerSvc" #Windows Error Reporting Service
    "WFDSConMgrSvc" #Wi-Fi Direct Services Connection Manager Service
    "WiaRpc" #Still Image Acquisition Events
    "WinHttpAutoProxySvc" #WinHTTP Web Proxy Auto-Discovery Service
    "WinRM" #Windows Remote Management (WS-Management)
    "wisvc" #Windows Insider Service
    "WlanSvc" #WLAN AutoConfig
    "wlidsvc" #Microsoft Account Sign-in Assistant
    "wmiApSrv" #WMI Performance Adapter
    "WMPNetworkSvc" #Windows Media Player Network Sharing Service
    "workfolderssvc" #Work Folders
    "WpcMonSvc" #Parental Controls
    "WPDBusEnum" #Portable Device Enumerator Service
    "wuauserv" #Windows Update
    "WwanSvc" #WWAN AutoConfig
    "XblAuthManager" #Xbox Live Auth Manager
    "XblGameSave" #Xbox Live Game Save
    "XboxGipSvc" #Xbox Accessory Management Service
    "XboxNetApiSvc" #Xbox Live Networking Service
    "AppVClient" #Microsoft App-V Client
    "DialogBlockingService" #DialogBlockingService
    "MsKeyboardFilter" #Microsoft Keyboard Filter
    "NetTcpPortSharing" #Net.Tcp Port Sharing Service
    "RemoteAccess" #Routing and Remote Access
    "RemoteRegistry" #Remote Registry
    "SgrmBroker" #System Guard Runtime Monitor Broker
    "shpamsvc" #Shared PC Account Manager
    "ssh-agent" #OpenSSH Authentication Agent
    "tzautoupdate" #Auto Time Zone Updater
    "UevAgentService" #User Experience Virtualization Service
    "uhssvc" #Microsoft Update Health Service
    "PrintDeviceConfigurationService" #Print Device Configuration Service
)
. .\core.ps1
manageService $automatic '2'
manageService $manual '3'
manageService $disabled '4'
