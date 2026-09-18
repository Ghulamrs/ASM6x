@echo off
rem  Links every .obj in a directory on its own with lnk6x against rts6740_elf_eh.lib, the
rem  exception-handling build of TI's runtime made once as VM6747/Emulator/tests/ti.sh says.
rem    link.cmd <directory>
set PATH=C:\ti\ccsv7\tools\compiler\ti-cgt-c6000_8.2.2\bin;%PATH%
set TILIB=C:\Users\GRA\Documents\VM6747\tilib
cd /d %~1
if not exist %TILIB%\rts6740_elf_eh.lib (echo NO_EH_LIBRARY & exit /b 3)
set linked=0
set failed=0
set WITH=
if exist with\*.obj set WITH=with\*.obj
for %%f in (*.obj) do (
  lnk6x -mv6740 --abi=eabi -i %TILIB% %~dp0ti-link.cmd %%f %WITH% -l rts6740_elf_eh.lib -o %%~nf.out > %%~nf.lnk 2>&1
  if errorlevel 1 (set /a failed+=1 & echo NOLINK %%f) else set /a linked+=1
)
echo link.cmd: %linked% linked, %failed% did not
