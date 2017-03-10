@echo off

cd /d F:\RSM\Old-Code\cpo-osa
::specify the path of your old code

::git pull origin master
git checkout feature/cadence-1

git pull

git rev-list -n1 --before={%1} feature/cadence-1 | xargs git checkout

git reset --hard

git clean -df

echo -------------------------------------------
echo -------------------------------------------

echo OldDate is %1

echo -------------------------------------------
echo -------------------------------------------

set Path=%Path%;C:\Program Files (x86)\MSquared\M2 RSM

set OUTFILE="%USERPROFILE%\M2 RSM Wizard\output\osaold.htm"
   
set DATFILE="File Dat %USERPROFILE%\M2 RSM Wizard\workfiles\osaold.dat"
 
set INFILE="%USERPROFILE%\M2 RSM Wizard\input\osaold.lst"

set TEXTFILE="Code Differential Work File Creation"

set REPOSITORY="create F:\RSM\Old-Code\cpo-osa" 
::specify the path of as old code location

rsm -H -O%OUTFILE% -S%TEXTFILE% -w%REPOSITORY% -wd -w%DATFILE% -F%INFILE%

cd /d F:

cd /d F:\RSM\New-Code\cpo-osa
::specify the path of the new code
git checkout feature/cadence-1

git pull

git rev-list -n1 --before={%2} feature/cadence-1 | xargs git checkout

git reset --hard

git clean -df

echo -------------------------------------------

echo -------------------------------------------

echo NewDate is %2

echo -------------------------------------------

echo -------------------------------------------

set Path=%Path%;C:\Program Files (x86)\MSquared\M2 RSM

set OUTFILE="%USERPROFILE%\M2 RSM Wizard\output\osanew.htm"  
   
set DATFILE="File Dat %USERPROFILE%\M2 RSM Wizard\workfiles\osanew.dat" 

set INFILE="%USERPROFILE%\M2 RSM Wizard\input\osanew.lst"

set TEXTFILE="Code Differential Work File Creation"

set REPOSITORY="create F:\RSM\New-Code\cpo-osa" 
::specify the path of as new code location

rsm -H -O%OUTFILE% -S%TEXTFILE% -w%REPOSITORY% -wd -w%DATFILE% -F%INFILE%

cd /d F:

set Path=%Path%;C:\Program Files (x86)\MSquared\M2 RSM

set OUTPUTFILE="F:\Shared\RSMOutputs\OSA.htm"

set TEXTFILE="Code Differentials Between Work Files"

set INPUTFILE="x %USERPROFILE%\M2 RSM Wizard\workfiles\osaold.dat, %USERPROFILE%\M2 RSM Wizard\workfiles\osanew.dat"

rsm -H -O%OUTPUTFILE% -S%TEXTFILE% -xNOWRAP -wd -w%INPUTFILE%

