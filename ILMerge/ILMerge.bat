set binaryPath=%CD%\..\TrueResize\bin\Release
set outputPath=%CD%\..\TrueResize\bin\ILMerge
IF NOT EXIST "%outputPath%" MKDIR "%outputPath%"
IF ["%programfiles(x86)%"]==[""] SET ilmergePath="%programfiles%\Microsoft\ILMerge"
IF NOT ["%programfiles(x86)%"]==[""] SET ilmergePath="%programfiles(x86)%\Microsoft\ILMerge"
%ilmergePath%\ilmerge /ndebug /target:winexe /out:"%outputPath%\TrueResize.exe" "%binaryPath%\TrueResize.exe" "%binaryPath%\Utilities.dll" "%binaryPath%\DiskAccessLibrary.dll" "%binaryPath%\TrueCryptLibrary.dll"