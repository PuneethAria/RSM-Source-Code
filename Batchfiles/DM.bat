@echo off

cd /d F:\RSM\Old-Code\sharp-cpo
::specify the path of your old code

::git pull origin master
git checkout feature-SHCPO-3-Full-Data-Extraction-Tool

git pull

git rev-list -n1 --before={%1} feature-SHCPO-3-Full-Data-Extraction-Tool | xargs git checkout

git reset --hard

git clean -df

echo -------------------------------------------

echo -------------------------------------------

echo OldDate is %1

echo -------------------------------------------

echo -------------------------------------------

set Path=%Path%;C:\Program Files (x86)\MSquared\M2 RSM

set OUTFILE="%USERPROFILE%\M2 RSM Wizard\output\dmold.htm"
   
set DATFILE="File Dat %USERPROFILE%\M2 RSM Wizard\workfiles\dmold.dat"
 
set INFILE="%USERPROFILE%\M2 RSM Wizard\input\dmold.lst"

set TEXTFILE="Code Differential Work File Creation"

set REPOSITORY="create F:\RSM\Old-Code\sharp-cpo" 
::specify the path of as old code location

rsm -H -O%OUTFILE% -S%TEXTFILE% -w%REPOSITORY% -wd -w%DATFILE% -F%INFILE%

cd /d F:

@echo off

cd /d F:\RSM\New-Code\sharp-cpo
::specify the path of the new code
git checkout feature-SHCPO-3-Full-Data-Extraction-Tool

git pull

git rev-list -n1 --before={%2} feature-SHCPO-3-Full-Data-Extraction-Tool | xargs git checkout

git reset --hard

git clean -df

echo -------------------------------------------

echo -------------------------------------------

echo NewDate is %2

echo -------------------------------------------

echo -------------------------------------------

set Path=%Path%;C:\Program Files (x86)\MSquared\M2 RSM

set OUTFILE="%USERPROFILE%\M2 RSM Wizard\output\dmnew.htm"  
   
set DATFILE="File Dat %USERPROFILE%\M2 RSM Wizard\workfiles\dmnew.dat" 

set INFILE="%USERPROFILE%\M2 RSM Wizard\input\dmnew.lst"

set TEXTFILE="Code Differential Work File Creation"

set REPOSITORY="create F:\RSM\New-Code\sharp-cpo" 
::specify the path of as new code location

rsm -H -O%OUTFILE% -S%TEXTFILE% -w%REPOSITORY% -wd -w%DATFILE% -F%INFILE%

cd /d F:

set Path=%Path%;C:\Program Files (x86)\MSquared\M2 RSM

set OUTPUTFILE="F:\Shared\RSMOutputs\DM.htm"

set TEXTFILE="Code Differentials Between Work Files"

set INPUTFILE="x %USERPROFILE%\M2 RSM Wizard\workfiles\dmold.dat, %USERPROFILE%\M2 RSM Wizard\workfiles\dmnew.dat"

rsm -H -O%OUTPUTFILE% -S%TEXTFILE% -xNOWRAP -wd -w%INPUTFILE%


