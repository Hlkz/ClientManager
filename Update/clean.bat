@echo off

rd data /Q /S
mkdir data
rd frFR /Q /S
rd enUS /Q /S

del res\data\patch.cmd /Q
del res\data\patch.html /Q
rd data_tmp /Q /S
del *.mpq /Q

for /d %%G in ("wow-*.exe") do rd /s /q "%%~G"

rd installers /Q /S
rd downloaders /Q /S

del *.torrent /Q
del prepatch.lst /Q
del base.exe /Q

::pause