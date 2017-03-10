@echo off

cd /d F:\RSM\Old-Code\cpo-iwb

git checkout master

git pull

git rev-list -n1 --before={%1} master |xargs git checkout

git reset --hard

git clean -df

echo OldDate is %1

set Path=%Path%;C:\Program Files (x86)\MSquared\M2 RSM

set OUTFILE="%USERPROFILE%\M2 RSM Wizard\output\iwbold.htm"
   
set DATFILE="File Dat %USERPROFILE%\M2 RSM Wizard\workfiles\iwbold.dat"
 
set INFILE="%USERPROFILE%\M2 RSM Wizard\input\iwbold.lst"

set TEXTFILE="Code Differential Work File Creation"

set REPOSITORY="create F:\RSM\Old-Code\cpo-iwb" 
::specify the path of as old code location

rsm -H -O%OUTFILE% -S%TEXTFILE% -w%REPOSITORY% -wd -w%DATFILE% -F%INFILE%

cd /d F:

@echo off

cd /d F:\RSM\New-Code\cpo-iwb
::specify the path of the new code
git checkout master

git pull

git rev-list -n1 --before={%2} master |xargs git checkout

git reset --hard

git clean -df

echo -------------------------------------------

echo -------------------------------------------

echo NewDate is %2

echo -------------------------------------------

echo -------------------------------------------

set Path=%Path%;C:\Program Files (x86)\MSquared\M2 RSM

set OUTFILE="%USERPROFILE%\M2 RSM Wizard\output\iwbnew.htm"  
   
set DATFILE="File Dat %USERPROFILE%\M2 RSM Wizard\workfiles\iwbnew.dat" 

set INFILE="%USERPROFILE%\M2 RSM Wizard\input\iwbnew.lst"

set TEXTFILE="Code Differential Work File Creation"

set REPOSITORY="create F:\RSM\New-Code\cpo-iwb" 
::specify the path of as new code location

rsm -H -O%OUTFILE% -S%TEXTFILE% -w%REPOSITORY% -wd -w%DATFILE% -F%INFILE%

cd /d F:

set Path=%Path%;C:\Program Files (x86)\MSquared\M2 RSM

set OUTPUTFILE="F:\Shared\RSMOutputs\IWB.htm"

set TEXTFILE="Code Differentials Between Work Files"

set INPUTFILE="x %USERPROFILE%\M2 RSM Wizard\workfiles\iwbold.dat, %USERPROFILE%\M2 RSM Wizard\workfiles\iwbnew.dat"

rsm -H -O%OUTPUTFILE% -S%TEXTFILE% -xNOWRAP -wd -w%INPUTFILE%

