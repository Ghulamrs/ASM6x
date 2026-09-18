@echo off
rem probe.cmd <dir>: TI's asm6x (through cl6x, uncompressed, no debug) on every .s of the directory,
rem   its log beside each, and a dis6x listing of every object it wrote.
set PATH=C:\ti\ccsv7\tools\compiler\ti-cgt-c6000_8.2.2\bin;%PATH%
cd /d %~1
for %%f in (*.s) do (
  cl6x -mv6740 --abi=eabi --no_compress --symdebug:none -c %%f --output_file=%%~nf.asm6x.obj > %%~nf.asm6x.log 2>&1
  if errorlevel 1 (echo REFUSED %%~nf) else (dis6x %%~nf.asm6x.obj > %%~nf.asm6x.dis 2>&1)
)
echo PROBE-DONE
