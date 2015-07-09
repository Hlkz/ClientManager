@echo off

del TinyData.diff
del TinyLoc.diff
del TinyPatch.diff

cd D:\A\Client\Manager\Data\TinyData
git status --short >> D:\A\Client\Manager\bat\TinyData.diff
cd D:\A\Client\Manager\Data\TinyLoc
git status --short >> D:\A\Client\Manager\bat\TinyLoc.diff
cd D:\A\Client\Manager\Data\TinyPatch
git status --short >> D:\A\Client\Manager\bat\TinyPatch.diff

pause