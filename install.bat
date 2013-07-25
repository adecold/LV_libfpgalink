@echo OFF

rem ======================================================================
rem Simple script to copy files from the repo into the labview directory
rem ======================================================================

IF %1=="" GOTO ARG_ERROR
IF NOT EXIST .git GOTO WORKDIR_ERROR

REM set LVDIR=C:\Program Files (x86)\National Instruments\LabVIEW 2011
set LVDIR=%~1

copy /Y "LabVIEW\examples\FpgaLink\" "%LVDIR%\examples\FpgaLink\"
copy /Y "LabVIEW\vi.lib\FpgaLink\" "%LVDIR%\vi.lib\FpgaLink\"
copy /Y "LabVIEW\menus\Categories\FpgaLink\" "%LVDIR%\menus\Categories\FpgaLink\"
GOTO EXIT

:ARG_ERROR
echo ERROR:
ECHO You must specify the LabVIEW directory as an arguement to copy files to
echo example: install.bat "C:\Program Files (x86)\National Instruments\LabVIEW 2011"
echo.
echo.
GOTO EXIT

:WORKDIR_ERROR
echo ERROR:
echo This batch script should be run from the root folder of the git repo
echo.
echo.
GOTO EXIT

:EXIT
EXIT /B