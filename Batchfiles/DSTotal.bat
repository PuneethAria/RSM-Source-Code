@echo off

cd /d F:\RSM\New-Code\sharp-cpo-clients

git checkout master

git pull

git reset --hard

git clean -df

echo -------------------------------------------

echo -------------------------------------------

set Path=%Path%;C:\Program Files (x86)\MSquared\M2 RSM

set OUTFILE="F:\Shared\RSMOutputs\DStotal.htm"

set INFILE="%USERPROFILE%\M2 RSM Wizard\input\dsnew.lst"

set TEXTFILE="Total Project Lines of Code"

rsm -H -O%OUTFILE% -S%TEXTFILE% -Tl -TL -TN -Ts -F%INFILE%
