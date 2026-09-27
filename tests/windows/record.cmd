@echo off
if "%~1"==":shard" goto :shard
rem  Assembles every .s in a directory with TI's asm6x (through cl6x, uncompressed, no debug
rem  information) into <name>.asm6x.obj beside it. Driven by tests/windows.sh.
rem    record.cmd <directory>
set PATH=C:\ti\ccsv7\tools\compiler\ti-cgt-c6000_8.2.2\bin;%PATH%
cd /d %~1
rem  Six shards at once with par.cmd, each assembling every sixth file.
call "%~dp0par.cmd" 6 "%~f0"
echo RECORD-DONE
exit /b 0

:shard
setlocal enabledelayedexpansion
set /a I=0
for %%f in (*.s) do (
  set /a I+=1, M=I %% %~3 + 1
  if !M!==%~2 (
    cl6x -mv6740 --abi=eabi --no_compress --symdebug:none -c %%f --output_file=%%~nf.asm6x.obj > %%~nf.asm6x.log 2>&1
    if errorlevel 1 echo REFUSED %%f
  )
)
exit /b 0
