# MCPackage
A simple script that will package files from an MCP directory to create a working minecraft.jar

## Requirements
* WinRAR

## Installation
* Download the zip archive ([Located here](https://github.com/Hacksore/MCPackage/archive/master.zip))
* Extract the zip and move the folder MCPackage to the root of your MCP folder
* Run the package.bat located in MCPackage/package.bat

## Proguard 
Proguard can be enabe by editing the package.bat

    set obfuscate=true
You also need to have the following files in the respective paths

    <MCPdirectory>/MCPackage/proguard.jar
    <MCPdirectory>/MCPackage/progaurd.pro
    
The progaurd jar is for running the obfuscation. The proguard.pro is the configuration settings used by proguard for the obfuscation process.

## Librarys 
Add any packages into the MCPackage/lib folder to have them added to the jar