# MCPackage
> A simple script that will package files from an MCP directory to create a working minecraft.jar

## Requirements
> WinRAR

> Windows OS

## Installation
> Download the zip archive ([Located here](https://github.com/Hacksore/MCPackage/archive/master.zip))

> Extract the zip and move the folder MCPackage to the root of your MCP directory

> Copy the current version of minecraft to `<MCPdirectory>/jars/`

> Edit the `<MCPdirectory>/MCPackage/package.bat` to set your mod name

    set modname=somemod

## Usage

> Make sure your project is ready to be built.

> Run the package.bat located in  `<MCPdirectory>/MCPackage/package.bat`

> Once finished you can use the jar in  `%APPDATA%/.minecraft/version/<modname>/<modname>.jar`

> Alternativly there is the packaged jar in `<MCPdirectory>/MCPackage/minecraft.jar`
    
## Proguard 
> Proguard obfuscation can be enabled by editing the package.bat

    set obfuscate=true
You also need to have the following files in the respective paths

> Proguard `<MCPdirectory>/MCPackage/proguard.jar`

> Proguard Config `<MCPdirectory>/MCPackage/progaurd.pro`


## Librarys 
> Add any packages into the `<MCPdirectory>/MCPackage/lib` folder to have them added to the jar