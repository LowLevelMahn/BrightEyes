@echo off

set tools_dir=f:\projects\fun\dos_games_rev\tools

set WATCOM=%tools_dir%\open-watcom-2_0-c-win-x64
set WATCOM_BIN=%watcom%\binnt64
set INCLUDE=%watcom%\h
set PATH=%WATCOM_BIN%;%PATH%

echo start dos build > doscomp.txt

wcc -bt=dos -ml -ox -2 -s -fp3 CDA_CODE.C >> doscomp.txt 2>&1
wcc -bt=dos -ml -ox -2 -s -fp3 -IAIL NGEN.C >> doscomp.txt 2>&1
wcc -bt=dos -ml -ox -2 -s -fp3 VGALIB.C >> doscomp.txt 2>&1
wcc -bt=dos -ml -ox -2 -s -fp3 POWERP20.C >> doscomp.txt 2>&1

rem TASM.EXE /os /z POWERP20.ASM POWERP20.OBJ >> doscomp.txt 2>&1
rem TASM.EXE /m /w+ /ml /iAIL AIL\AIL.ASM AIL.OBJ >> doscomp.txt 2>&1
rem TLINK @TLINK.RES >> doscomp.txt 2>&1

rem pause