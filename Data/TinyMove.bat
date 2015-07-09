@echo off

::rmdir adel /Q /S
mkdir adel

mkdir adel\TinyData
for /f %%f in ('dir /b TinyData') do if "%%f" neq ".git" move TinyData\%%f adel\TinyData\

mkdir adel\TinyLoc\frFR
mkdir adel\TinyLoc\enUS
for /f %%f in ('dir /b TinyLoc\frFR') do if "%%f" neq ".git" move TinyLoc\frFR\%%f adel\TinyLoc\frFR\
for /f %%f in ('dir /b TinyLoc\enUS') do if "%%f" neq ".git" move TinyLoc\enUS\%%f adel\TinyLoc\enUS\

mkdir adel\TinyPatch\frFR
mkdir adel\TinyPatch\enUS
for /f %%f in ('dir /b TinyPatch\frFR') do if "%%f" neq ".git" move TinyPatch\frFR\%%f adel\TinyPatch\frFR\
for /f %%f in ('dir /b TinyPatch\enUS') do if "%%f" neq ".git" move TinyPatch\enUS\%%f adel\TinyPatch\enUS\

pause