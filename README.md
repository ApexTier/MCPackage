# MCPackage
> A simple script that will package files from an MCP directory to create a working minecraft.jar

## Requirements
> WinRAR is required for jar manipulation.

## Installation
> Download the zip archive ([Located here](https://github.com/Hacksore/MCPackage/archive/master.zip))

> Extract the zip and move the folder MCPackage to the root of your MCP directory

## Usage
> Make sure your project is ready to be built.

> Copy the current version of minecraft to `<MCPdirectory>/jars/`

> Run the package.bat located in  `<MCPdirectory>/MCPackage/package.bat`

> Once finished it will output a jar in `<MCPdirectory>/MCPackage/minecraft.jar`

    
## Proguard 
> Proguard obfuscation can be enabled by editing the package.bat

    set obfuscate=true
You also need to have the following files in the respective paths

> `<MCPdirectory>/MCPackage/proguard.jar`

> `<MCPdirectory>/MCPackage/progaurd.pro`

___

> The "progaurd.jar" is for running the obfuscation. The "proguard.pro" is the configuration settings used by proguard for the obfuscation process.

## Librarys 
> Add any packages into the `<MCPdirectory>/MCPackage/lib` folder to have them added to the jar