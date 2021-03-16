@def title = "Linux for Windows"
@def hascode = true
@def date = Date(2019, 3, 22)
@def rss = "Instructions on getting started with Windows Subsystem for Linux."

@def tags = ["setup", "enviornment"]

# Linux for Windows

\toc

## Why run Linux on Windows?
Most high performance computing environments run a version of Linux. Microsoft has created a way to run Linux on top of Windows 10 that enables you to take advantage of powerful Linux software and develop tools locally that will work in cluster computing environments. Microsoft has called this feature Windows Subsystem for Linux (WSL).

## Windows Subsystem for Linux
Windows Subsystem for Linux can be installed on all versions of Windows 10 with the exception of Windows 10 Home Edition. Confirm your "Edition" of Windows by ~~~<a href="ms-settings:about?activationSource=SMC-IA-4027391">clicking here</a>~~~.

1. Run Windows Powershell as Administrator. You can search your computer for "Powershell" from the Windows menu. Right click on "Windows Powershell" and select "Run as Administrator."
2. Inside Windows Powershell, enter the following commands, each followed by hitting `Enter`:
    * `dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart`
    * `dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart`
3. Restart your computer
4. Download and install: ~~~<a href=https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi">WSL Update</a>~~~
5. Restart your computer
6. Run Windows Powershell as Administrator, and enter the following command: `wsl --set-default-version 2`
7. Open the ~~~<a href=https://aka.ms/wslstore>Microsoft Store</a>~~~. Download and install Debian.
8. Open Debian. The first time you use Debian, you will be prompted to create a username and password for the guest operating system.

## Troubleshooting
1. If you are unable to install WSL, confim that you are running a compatable version of Windows (e.g. NOT Windows Home edition). ~~~<a href="ms-settings:about?activationSource=SMC-IA-4027391">Click here</a>~~~ to check your "Edition" of Windows.
2. If you are running Windows as a virtual machine and receive the error: `Error: 0x80370102 The virtual machine could not be started because a required feature is not installed` when attempting to open Debian, then your virtual machine hypervisor does not have nested virtualization enabled (e.g. for ~~~<a href="https://kb.parallels.com/en/125195">Paralells></a>~~~)