@echo off
rem  Builds asm6x with cl on the box and runs the encoding suite there, so the assembler is
rem  known to be one program on all three machines. Needs python3 on the PATH for run.sh.
rem    build.cmd <tree root>
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat" >nul
cd /d %~1
if not exist build mkdir build
cl /nologo /std:c++14 /W4 /permissive- /EHsc /O2 /Fo:build\ /Fe:build\asm6x.exe src\*.cpp > build\cl.log 2>&1
if errorlevel 1 (type build\cl.log & echo BUILD-FAILED & exit /b 1)
findstr /c:"warning" build\cl.log
echo BUILD-DONE
