# ClientManager

## How to use

FullData: all models/textures/etc. used to dev  
TinyData: lightest client, extracted from FullData and from the database.

## Updating TinyData

After changes in the FullData or in the database, you need to update your TinyData.

TinyData is stored by versions in 3 directories
+ TinyData
+ TinyLoc
+ TinyPatch

ClientSelector updates
+ TinyData
+ TinyLoc
=> run "0 Select.bat" (*ClientManager --s-all*)

TinyPatch contains dbc and lua
+ DBtoDBC updates dbc TODO: translate in c++
+ lua update is stored in A\Client\Script\Interface-loc
=> run "0 Update.bat"

## Versioning

The Tiny paths are git repository.  
Commit a version means commit these repositories and save it to the database.  
=> run "1 Diff.bat" to check what you are about to commit  
=> run "1 Version.bat" to commit the version (in the path + in the database)

## Updates

In terms of files, an update means:
+ A downloader to an updater, this downloader within a MoPaQ file
+ This updater in pieces

To generate an update between the two last revisions  
=> run "2 Update.bat" (*ClientManager --p-update*)

## Full Version

To compress all the Tiny paths  
=> run "3 Compress.bat" (*ClientManager --c-all*)
