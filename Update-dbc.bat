@echo off

:: clean
rd /S /Q D:\A\Client\Manager\Data\TinyPatch\frFR\DBFilesClient

:: dbc
"D:\A\Tools\db2dbc\db2dbc\bin\Release\db2dbc" all 2 "D:\A\DBC\Output"
xcopy /Y /Q /E D:\A\DBC\Output 			D:\A\Client\Manager\Data\TinyPatch\frFR\DBFilesClient\

cd D:\A\Client\Manager
ClientManager.exe --c-udbc

pause