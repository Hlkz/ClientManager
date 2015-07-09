@echo off
:: Updates TinyPatch

:: clean
rd /S /Q D:\A\Client\Manager\Data\TinyPatch\frFR\DBFilesClient
rd /S /Q D:\A\Client\Manager\Data\TinyPatch\frFR\Interface
:: dbc
"D:\A\Tools\db2dbc\db2dbc\bin\Release\db2dbc" all 2 "D:\A\DBC\Output"
xcopy /Y /Q /E D:\A\DBC\Output 			D:\A\Client\Manager\Data\TinyPatch\frFR\DBFilesClient\
:: lua
cd D:\A\Client\Script
xcopy /Y /Q /E Interface-frFR\AddOns 	D:\A\Client\Manager\Data\TinyPatch\frFR\Interface\AddOns\
xcopy /Y /Q /E Interface-frFR\FrameXML 	D:\A\Client\Manager\Data\TinyPatch\frFR\Interface\FrameXML\
xcopy /Y /Q /E Interface-frFR\GlueXML 	D:\A\Client\Manager\Data\TinyPatch\frFR\Interface\GlueXML\

:: clean
rd /S /Q D:\A\Client\Manager\Data\TinyPatch\enUS\DBFilesClient
rd /S /Q D:\A\Client\Manager\Data\TinyPatch\enUS\Interface
:: dbc
"D:\A\Tools\db2dbc\db2dbc\bin\Release\db2dbc" all 0 "D:\A\DBC\Output"
xcopy /Y /Q /E D:\A\DBC\Output 			D:\A\Client\Manager\Data\TinyPatch\enUS\DBFilesClient\
:: lua
cd D:\A\Client\Script
xcopy /Y /Q /E Interface-enUS\AddOns 	D:\A\Client\Manager\Data\TinyPatch\enUS\Interface\AddOns\
xcopy /Y /Q /E Interface-enUS\FrameXML 	D:\A\Client\Manager\Data\TinyPatch\enUS\Interface\FrameXML\
xcopy /Y /Q /E Interface-enUS\GlueXML 	D:\A\Client\Manager\Data\TinyPatch\enUS\Interface\GlueXML\

pause