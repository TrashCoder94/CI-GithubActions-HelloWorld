@echo off
pushd %~dp0\..\

echo "Generating Project with Premake"
call ThirdParty\premake\Binaries\premake5.exe vs2019

echo "Building Debug Configuration"
msbuild HelloWorld.sln /t:Rebuild /p:Configuration=Debug

echo "Building Release Configuration"
msbuild HelloWorld.sln /t:Rebuild /p:Configuration=Release

popd