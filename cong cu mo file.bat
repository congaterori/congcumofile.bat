:start
@echo off
title cong cu mo file
color a
echo you don't need add "\" after add link
echo If you want to continue writing, choose to write to the file
echo 1.create a new file
echo 2.create a new folder
echo 3.delete a file
echo 4.delete a folder
echo 5.writing to file
echo 6.file information
echo 7.folder information
echo 8.read file
echo 9.rename file
echo 10.rename folder
echo 11.moving file
echo 12.moving folder
echo 13.tree
echo 14.tree output to file
echo 15.start file
echo 16.close file.exe
echo 17.copy file
echo 18.copy folder
echo 19.Copy the result of text to the clipboard
echo 20.comoparethe contents file
echo 21.find text in file
set /p tl=
if %tl% == 1 goto hellofile
if %tl% == 2 goto hellofolder
if %tl% == 3 goto detfile
if %tl% == 4 goto detfolder
if %tl% == 5 goto writ
if %tl% == 6 goto dirfile
if %tl% == 7 goto dirfolder
if %tl% == 8 goto readfile
if %tl% == 9 goto renamefile
if %tl% == 10 goto renamefolder
if %tl% == 11 goto movefile
if %tl% == 12 goto movefolder
if %tl% == 13 goto tree
if %tl% == 14 goto treetofile
if %tl% == 15 goto startfile
if %tl% == 16 goto closeexe
if %tl% == 17 goto copyfile
if %tl% == 18 goto copyfolder
if %tl% == 19 goto clip
if %tl% == 20 goto compare
if %tl% == 21 goto find 
:hellofile
set /p makefile=file name: 
set /p savefile=where do you want to save?
set /p writefile=what do you want to write in file: 
echo %writefile% > %savefile%\%makefile%
pause
goto start
:hellofolder
set /p makefolder=folder name: 
set /p savefolder=where do you want to save?
md %savefolder%\%makefolder%
pause
goto start
:detfile
set /p delfile=file name you want to delete: 
set /p savedelfile=where do you want to delete?
DEL %savedelfile%\%delfile%
pause
goto start
:writ
set /p namefilewrite=file name: 
set /p textfilewrite=what do you want to write: 
echo %textfilewrite% >> %namefilewrite%
pause
goto start
:detfolder
set /p delfolder=folder name you want to delete: 
set /p savedelfolder=where do you want to delete: 
DEL %savedelfolder%\%delfolder%
pause
goto start
:dirfile
set /p dirl=file name: 
set /p dirloca=where do you want to dir file: 
cd %dirloca%
dir %dirl%
pause
goto start
:dirfolder
set /p dird=folder name: 
set /p dirdloca=where do you want to dir folder: 
DIR %dirdloca%\%dird% /O N /P /Q /R /S /T C A W
pause
goto start
:readfile
set /p realfile=file name: 
set /p locaread=where do you want to read: 
cd %locaread%
type %realfile%
pause
goto start
:renamefile
set /p refile=file name: 
set /p refile1=name you want to change: 
set /p saverenamefile=where file do you want to rename: 
cd %fileloca%
rename %refile%\%refile1%
pause
goto start
:renamefolder
set /p refolder=folder name: 
set /p refolder1=name you want to change: 
set /p saverenamefolder=where folder do you want to rename: 
cd %saverenamefolder%
rename %refolder%\%refolder1%
pause
goto start
:movefile
set /p moveingfile=file name: 
set /p moveoffile=where file you want to move: 
set /p wheremovefile=where do you want to move: 
move /-Y %moveoffile%\%moveingfile% "%wheremovefile%\%moveingfile%"
pause
goto start
:movefolder
set /p moveeingfolder=folder name: 
set /p moveoffolder=where folder do you want to move: 
set /p wheremovefolder=where do you want to move: 
move /-Y %moveoffolder%\%moveingfolder% "%wheremovefolder%\%moveingfolder%"
pause
goto start
:tree
set /p savetree=where do you want to tree: 
tree %savetree%
pause
goto start
:treetofile
set /p treefilename=file name: 
set /p treesave=where do you want to save file tree: 
set /p treeoutput=where do you want to tree: 
cd %treeoutput%
tree > %treesave%\%treefilename%.txt
pause
goto start
:startfile
set /p startfilename=file name: 
set /p startfilew=file localtion: 
start %startfilew%\%startfilename%
pause
goto start
:closeexe
echo can only be used with programs or .exe
set /p closeexename=file name: 
set /p closeexew=where file you want to close: 
TASKKILL /F /IM %clossexew%\%closeexename%.exe
pause
goto start
:copyfile
set /p filec=where file do you want to copy: 
set /p copyf=where do you want to save: 
echo n|COPY /-y %filec% %copyf%
pause
goto start
:copyfolder
set /p folc=where folder do you want to copy: 
set /p copyfol=where do you want to save folder: 
copy "%folc%" "%copyfol%"
pause
goto start
:clip
set /p clipname=what is your file to copy to clipboard: 
set /p adrrclip=where file you want to copy to clipboard: 
CLIP < %adrrclip%\%clipname%
pause
goto start
:compare
set /p FC=The first file name to compare: 
set /p toFC=The last file name to compare: 
set /p whereco=where is the first file: 
set /p wherelast=where is the last file: 
fc /T /N %whereco%\%FC% %wherelast%\%toFC% >NUL && echo files is Same || echo file is Different or error
pause
goto start
:find
set /p namef=what name file you want to find the text: 
set /p textfind=what text do you want to find: 
set /p wheref=where is the file you want to find: 
find "%textfind%" %wheref%\%namef%
if %ERRORLEVEL% == 1 echo There are no characters name %textfind%
if NOT %ERRORLEVEL% == 1 echo have %textfind% in the text
pause
goto start
