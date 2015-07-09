@echo off

:: clean
rd /S /Q D:\A\Client\Manager\Data\TinyPatch\frFR\Interface

:: lua
cd D:\A\Client\Script
xcopy /Y /Q /E Interface-frFR\AddOns 	D:\A\Client\Manager\Data\TinyPatch\frFR\Interface\AddOns\
xcopy /Y /Q /E Interface-frFR\FrameXML 	D:\A\Client\Manager\Data\TinyPatch\frFR\Interface\FrameXML\
xcopy /Y /Q /E Interface-frFR\GlueXML 	D:\A\Client\Manager\Data\TinyPatch\frFR\Interface\GlueXML\

cd D:\A\Client\Manager
ClientManager.exe --c-ulua

pause