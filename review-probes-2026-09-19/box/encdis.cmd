@echo off
set PATH=C:\ti\ccsv7\tools\compiler\ti-cgt-c6000_8.2.2\bin;%PATH%
cd /d C:\fable-asm6x\encdis
tar xzf enc.tgz
for %%f in (*.asm6x.obj) do dis6x %%f > %%~nf.dis
tar czf dis.tgz *.dis
echo DIS-DONE
