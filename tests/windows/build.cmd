@echo off
if "%~1"==":shard" goto :shard
rem  Builds asm6x with cl on the box and assembles the encoding files with that binary into
rem  build\enc\, for tests/windows.sh to compare with the objects the clang build wrote: one
rem  program on three machines. (The box has no python, so the comparison happens here.)
rem    build.cmd <tree root>
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat" >nul
cd /d %~1
if not exist build mkdir build
if not exist build\enc mkdir build\enc
cl /nologo /MP /std:c++14 /W4 /permissive- /EHsc /O2 /D_CRT_SECURE_NO_WARNINGS /Fo:build\ /Fe:build\asm6x.exe src\*.cpp > build\cl.log 2>&1
if errorlevel 1 (type build\cl.log & echo BUILD-FAILED & exit /b 1)
findstr /c:"warning" build\cl.log
rem  The encoding files six at once with par.cmd.
call "%~dp0par.cmd" 6 "%~f0"
echo BUILD-DONE
exit /b 0

:shard
setlocal enabledelayedexpansion
set /a I=0
for %%f in (tests\enc\*.s) do (
  set /a I+=1, M=I %% %~3 + 1
  if !M!==%~2 (
    build\asm6x.exe %%f -o build\enc\%%~nf.obj
    if errorlevel 1 echo REFUSED %%~nf
  )
)
exit /b 0
