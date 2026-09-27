@echo off
if "%~1"==":shard" goto :shard
rem  Links every .obj in a directory on its own with lnk6x against rts6740_elf_eh.lib, the
rem  exception-handling build of TI's runtime made once as VM6747/Emulator/tests/ti.sh says.
rem    link.cmd <directory>
set PATH=C:\ti\ccsv7\tools\compiler\ti-cgt-c6000_8.2.2\bin;%PATH%
set TILIB=C:\Users\GRA\Documents\VM6747\tilib
cd /d %~1
if not exist %TILIB%\rts6740_elf_eh.lib (echo NO_EH_LIBRARY & exit /b 3)
set WITH=
if exist with\*.obj set WITH=with\*.obj
rem  Six shards at once with par.cmd; each prints =LINKED or =NOLINK per object, counted here.
call "%~dp0par.cmd" 6 "%~f0" > shards.log
findstr /v /b /c:"=" shards.log
set linked=0
set failed=0
for /f %%n in ('findstr /b /c:"=LINKED " shards.log ^| find /c /v ""') do set linked=%%n
for /f %%n in ('findstr /b /c:"=NOLINK " shards.log ^| find /c /v ""') do set failed=%%n
del /q shards.log
echo link.cmd: %linked% linked, %failed% did not
exit /b 0

:shard
setlocal enabledelayedexpansion
set /a I=0
for %%f in (*.obj) do (
  set /a I+=1, M=I %% %~3 + 1
  if !M!==%~2 (
    lnk6x -mv6740 --abi=eabi -i %TILIB% %~dp0ti-link.cmd %%f %WITH% -l rts6740_elf_eh.lib -o %%~nf.out > %%~nf.lnk 2>&1
    if errorlevel 1 (echo =NOLINK %%f& echo NOLINK %%f) else echo =LINKED %%f
  )
)
exit /b 0
