@echo off
:: Generate update
:: Copy installers/downloaders to release path

cd D:\A\Client\Manager
ClientManager.exe --p-update --p-release

pause