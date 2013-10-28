@echo off
set mcver=1.6.4
set modname=hacktek
set obfuscate=false

cd ../
runtime\bin\python\python_mcp runtime\recompile.py %*
runtime\bin\python\python_mcp runtime\reobfuscate.py %*

cd MCPackage/
echo Copying minecraft jar...
cp ../jars/versions/%mcver%/%mcver%.jar minecraft.jar

echo Adding reobfuscated code...
"C:/Program Files/WinRAR/WinRAR.exe" a -ep1 -r "minecraft.jar" "../reobf/minecraft/" 
 
echo Removing META-INF...
"C:/Program Files/WinRAR/WinRAR.exe" d "minecraft.jar" "META-INF" 

if %obfuscate%==true (
	echo Obfuscating the new jar...
	java -jar proguard.jar @proguard.pro
)

echo Adding libs...
"C:/Program Files/WinRAR/WinRAR.exe" a -ep1 -r "minecraftobf.jar" "lib/" 

if %obfuscate%==true (
	echo minecraftobf.jar was copied to .minecraft/versions/%modname%/%modname%.jar
	cp minecraftobf.jar %APPDATA%/.minecraft/versions/%modname%/%modname%.jar
) ELSE (
	echo minecraft.jar was copied to .minecraft/versions/%modname%/%modname%.jar
	cp minecraft.jar %APPDATA%/.minecraft/versions/%modname%/%modname%.jar
)
pause