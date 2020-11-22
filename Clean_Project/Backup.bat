@ECHO off
for /f "tokens=1 delims=: " %%h in ('time /T') do set hour=%%h
for /f "tokens=2 delims=: " %%m in ('time /T') do set minutes=%%m
Set timenow=%hour%h-%minutes%m

"C:\Program Files (x86)\7-Zip\7z.exe" a -t7z -m0=ppmd:o=11 %1"\Backup\ %DATE:~0,2%.%DATE:~3,2%.%DATE:~-4%_%timenow%.7z" -ir!%1\*.tex -ir!%1\*.tcp -ir!%1\*.sty -ir!%1\*.bib
