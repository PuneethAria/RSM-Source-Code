@echo off

cd /d F:\RSM\Old-Code\sharp-cpo-clients
::specify the path of your old code

::git pull origin master
git checkout nuxeo-drive-branded

git pull

git rev-list -n1 --before={%1} nuxeo-drive-branded | xargs git checkout

git reset --hard

git clean -df

echo -------------------------------------------

echo -------------------------------------------

echo OldDate is %1

echo -------------------------------------------

echo -------------------------------------------

set Path=%Path%;C:\Program Files (x86)\MSquared\M2 RSM

set OUTFILE="%USERPROFILE%\M2 RSM Wizard\output\dsold.htm"
   
set DATFILE="File Dat %USERPROFILE%\M2 RSM Wizard\workfiles\dsold.dat"
 
set INFILE="%USERPROFILE%\M2 RSM Wizard\input\dsold.lst"

set TEXTFILE="Code Differential Work File Creation"

set REPOSITORY="create F:\RSM\Old-Code\sharp-cpo-clients" 
::specify the path of as old code location

rsm -H -O%OUTFILE% -S%TEXTFILE% -w%REPOSITORY% -wd -w%DATFILE% -F%INFILE%

cd /d F:

@echo off

cd /d F:\RSM\New-Code\sharp-cpo-clients
::specify the path of the new code
git checkout nuxeo-drive-branded

git pull

git rev-list -n1 --before={%2} nuxeo-drive-branded | xargs git checkout

git reset --hard

git clean -df

echo -------------------------------------------

echo -------------------------------------------

echo NewDate is %2

echo -------------------------------------------

echo -------------------------------------------

set Path=%Path%;C:\Program Files (x86)\MSquared\M2 RSM

set OUTFILE="%USERPROFILE%\M2 RSM Wizard\output\dsnew.htm"  
   
set DATFILE="File Dat %USERPROFILE%\M2 RSM Wizard\workfiles\dsnew.dat" 

set INFILE="%USERPROFILE%\M2 RSM Wizard\input\dsnew.lst"

set TEXTFILE="Code Differential Work File Creation"

set REPOSITORY="create F:\RSM\New-Code\sharp-cpo-clients" 
::specify the path of as new code location

rsm -H -O%OUTFILE% -S%TEXTFILE% -w%REPOSITORY% -wd -w%DATFILE% -F%INFILE%

cd /d F:

set Path=%Path%;C:\Program Files (x86)\MSquared\M2 RSM

set OUTPUTFILE="F:\Shared\RSMOutputs\DS.htm"

set TEXTFILE="Code Differentials Between Work Files"

set INPUTFILE="x %USERPROFILE%\M2 RSM Wizard\workfiles\dsold.dat, %USERPROFILE%\M2 RSM Wizard\workfiles\dsnew.dat"

rsm -H -O%OUTPUTFILE% -S%TEXTFILE% -xNOWRAP -wd -w%INPUTFILE%

