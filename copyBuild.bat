@echo OFF

REM ======================================================================
REM Simple script to copy files from the labview directory to the git repo
REM Not taking time to figure out how to use the LV directory as my root
REM and creating a mapping to my files
REM ======================================================================

IF %1=="" GOTO ARG_ERROR
IF NOT EXIST .git GOTO WORKDIR_ERROR

REM set LVDIR=C:\Program Files (x86)\National Instruments\LabVIEW 2011
set LVDIR=%~1

copy /Y "%LVDIR%\examples\FpgaLink\" "LabVIEW\examples\FpgaLink\"
copy /Y "%LVDIR%\vi.lib\FpgaLink\" "LabVIEW\vi.lib\FpgaLink\"
copy /Y "%LVDIR%\menus\Categories\FpgaLink\" "LabVIEW\menus\Categories\FpgaLink\"
GOTO EXIT

:ARG_ERROR
echo ERROR:
ECHO You must specify the LabVIEW directory as an arguement to copy files from
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