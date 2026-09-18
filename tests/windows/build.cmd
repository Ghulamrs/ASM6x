@echo off
rem  Builds asm6x with cl on the box and assembles the encoding files with that binary into
rem  build\enc\, for tests/windows.sh to compare with the objects the clang build wrote: one
rem  program on three machines. (The box has no python, so the comparison happens here.)
rem    build.cmd <tree root>
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat" >nul
cd /d %~1
if not exist build mkdir build
if not exist build\enc mkdir build\enc
cl /nologo /std:c++14 /W4 /permissive- /EHsc /O2 /D_CRT_SECURE_NO_WARNINGS /Fo:build\ /Fe:build\asm6x.exe src\*.cpp > build\cl.log 2>&1
if errorlevel 1 (type build\cl.log & echo BUILD-FAILED & exit /b 1)
findstr /c:"warning" build\cl.log
for %%f in (tests\enc\*.s) do (
  build\asm6x.exe %%f -o build\enc\%%~nf.obj
  if errorlevel 1 echo REFUSED %%~nf
)
echo BUILD-DONE
