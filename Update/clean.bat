@echo off

rd data /Q /S
mkdir data
rd frFR /Q /S
rd enUS /Q /S

rd installers /Q /S
rd downloaders /Q /S
del *.torrent /Q
for /d %%G in ("wow-*.exe") do rd /s /q "%%~G"

rd data_tmp /Q /S
del *.mpq /Q

del prepatch.lst /Q
del base.exe /Q
del res\Installer.exe /Q
del res\skin-installer.mpq /Q
del res\skin-downloader.mpq /Q
del res\data\patch.cmd /Q
del res\data\patch.html /Q

::pause