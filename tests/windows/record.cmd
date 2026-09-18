@echo off
rem  Assembles every .s in a directory with TI's asm6x (through cl6x, uncompressed, no debug
rem  information) into <name>.asm6x.obj beside it. Driven by tests/windows.sh.
rem    record.cmd <directory>
set PATH=C:\ti\ccsv7\tools\compiler\ti-cgt-c6000_8.2.2\bin;%PATH%
cd /d %~1
for %%f in (*.s) do (
  cl6x -mv6740 --abi=eabi --no_compress --symdebug:none -c %%f --output_file=%%~nf.asm6x.obj > %%~nf.asm6x.log 2>&1
  if errorlevel 1 echo REFUSED %%f
)
echo RECORD-DONE
