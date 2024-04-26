# Starbound Windows Server With Automatic Restart
	Made to make hosting Starbound Servers on on windows devices easier while
	easily allowing access for customization and having organized folders and files.
	
## How to Run?
	Simply enter the "Bin" folder and run StarboundServer.exe and it will read all your
	config files then run the server in the way you configured it.

## Configs
	Most configuration files are stored at "Bin\configs" outside of the
	StarboundServer.config which is located at "ServerUniverse\StarboundServer.config".

## Saved Data
	Saved Data of your planets is stored at "ServerUniverse\universe".

## Mods
	Mod Folder is located at "ServerMods", the "Disabled" folder inside the "ServerMods"
	folder is to throw mods inside of it to make them not get loaded by the server
	without having to move them far away or delete them.

## Logs
	Logs by default are located at "ServerUniverse\logs", Host.log are spit out by the
	program while the StarboundServerLog.log is being spit out by starbound itself.

## Server Assets
	The server will read your base assets from "ServerAssets".

## Customization
	The config files in "Bin\configs" can be configured to your liking to make the server
	start with different aspects or read from different file locations of your choice!

	- BitVersion.config: lets you choose between the 32bit and 64bit version.

	- Bootconfig.config: lets you customize your "storage" and "asset" folder locations.

	- BootconfigLocation.config: lets you customize the location of your Bootconfig.

	- CmdWindowColors.config: lets you customize the colors of the server window while its running.

	- HostLogfileLocation.config: lets you customize the location of your Host Logfile.

	- LogfileLocation.config: lets you customize the location of your Starbound Logfile.

	- Loglevel.config: lets you change between the "loglevel" which will affect what the server writes into your Starbound Logfile and what it displays inside the cmd window.

	- RestartTimer.config: lets you change the time the server takes between automatic server restarts to remove performance issues which starbound servers suffer of after long uninterupted server activity.

	- Universe_Server.config: lets you change a variety of things lime connection timeout or asset missmatch messages.

	The config file StarboundServer.config in "ServerUniverse" can be configured aswell
	to change important server aspects which include:

	- Server Name

	- Server Port

	- Allow Admin Commands

	- Allow Asset Mismatch

	- Script Settings

	- Max Team Size

	- Max Player Count

	and more!