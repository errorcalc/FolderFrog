rem Delete old release
del "Release.zip" /q

rem Create Release archive
set Zip=7za.exe

"%Zip%" a "Release.zip" "FolderFrog.exe" -ssw

exit