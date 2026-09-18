@echo off
rem link.cmd <dir>: every .obj of the directory linked on its own by lnk6x against the EH runtime,
rem   the log beside each; with\*.obj, if present, joins every link.
set PATH=C:\ti\ccsv7\tools\compiler\ti-cgt-c6000_8.2.2\bin;%PATH%
set TILIB=C:\Users\GRA\Documents\VM6747\tilib
cd /d %~1
set WITH=
if exist with\*.obj set WITH=with\*.obj
for %%f in (*.obj) do (
  lnk6x -mv6740 --abi=eabi -i %TILIB% C:\fable-asm6x\ti-link.cmd %%f %WITH% -l rts6740_elf_eh.lib -o %%~nf.out > %%~nf.lnk 2>&1
  if errorlevel 1 (echo NOLINK %%~nf) else (echo LINKED %%~nf)
)
echo LINK-DONE
