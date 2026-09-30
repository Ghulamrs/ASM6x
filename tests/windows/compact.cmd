@echo off
if "%~1"==":shard" goto :shard
rem  asm6x's own compression, for sh tests/windows.sh compact: every .s of a directory assembled
rem  by cl6x 8.2.2 compressed (its default) into <name>.c82.obj and with --no_compress into
rem  <name>.nc82.obj, by 7.4.4 compressed into <name>.c74.obj, and dis6x's listing of each of
rem  those and of ours shipped beside them (<name>.ours.obj compressed, <name>.plain.obj not).
rem    compact.cmd <directory>
cd /d %~1
rem  Six shards at once with par.cmd.
call "%~dp0par.cmd" 6 "%~f0"
echo COMPACT-DONE
exit /b 0

:shard
setlocal enabledelayedexpansion
set B82=C:\ti\ccsv7\tools\compiler\ti-cgt-c6000_8.2.2\bin
set B74=C:\ti\ccsv5\tools\compiler\c6000_7.4.4\bin
set /a I=0
for %%f in (*.s) do (
  set /a I+=1, M=I %% %~3 + 1
  if !M!==%~2 (
    "%B82%\cl6x" -mv6740 --abi=eabi --symdebug:none -c %%f --output_file=%%~nf.c82.obj > %%~nf.c82.log 2>&1
    if errorlevel 1 echo REFUSED-82 %%f
    "%B82%\cl6x" -mv6740 --abi=eabi --no_compress --symdebug:none -c %%f --output_file=%%~nf.nc82.obj > %%~nf.nc82.log 2>&1
    "%B74%\cl6x" -mv6740 --abi=eabi --symdebug:none -c %%f --output_file=%%~nf.c74.obj > %%~nf.c74.log 2>&1
    for %%o in (c82 nc82 c74 ours plain) do if exist %%~nf.%%o.obj "%B82%\dis6x" %%~nf.%%o.obj > %%~nf.%%o.dis 2>&1
  )
)
exit /b 0
