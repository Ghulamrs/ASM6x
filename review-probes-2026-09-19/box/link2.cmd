@echo off
rem link2.cmd <dir>: links <dir>\*.obj (ASM6x) and <dir>\theirs\*.obj (asm6x) each on its own, into <name>.out and theirs\<name>.out
set PATH=C:\ti\ccsv7\tools\compiler\ti-cgt-c6000_8.2.2\bin;%PATH%
set TILIB=C:\Users\GRA\Documents\VM6747\tilib
cd /d %~1
for %%f in (*.obj) do (
  lnk6x -mv6740 --abi=eabi -i %TILIB% C:\fable-asm6x\ti-link.cmd %%f -l rts6740_elf_eh.lib -o %%~nf.out > %%~nf.lnk 2>&1
  if errorlevel 1 (echo NOLINK mine %%~nf) else (echo LINKED mine %%~nf)
)
cd theirs
for %%f in (*.obj) do (
  lnk6x -mv6740 --abi=eabi -i %TILIB% C:\fable-asm6x\ti-link.cmd %%f -l rts6740_elf_eh.lib -o %%~nf.out > %%~nf.lnk 2>&1
  if errorlevel 1 (echo NOLINK theirs %%~nf) else (echo LINKED theirs %%~nf)
)
echo LINK2-DONE
