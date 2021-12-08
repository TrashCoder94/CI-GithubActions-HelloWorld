@echo off
pushd %~dp0\..\

echo "Running Debug HelloWorld executable!"
call Binaries\Debug\HelloWorld.exe

echo "Running Release HelloWorld executable!"
call Binaries\Release\HelloWorld.exe

popd