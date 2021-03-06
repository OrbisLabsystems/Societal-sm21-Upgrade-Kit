PROMPT $G$G$G

REM      MODIFICATION HISTORY
REM 
REM      Version Date            Name                    Description
REM      ------- --------------- ----------------------- -------------------------------------------------------
REM      1.0     20-FEB-2019     Liam Dawson             SM12.1.2 upgrade
REM      2.0     15-MAY-2019     Jonathan O'Neill        SM12.2 upgrade
REM      3.0     22-MAR-2022	 Raphael Castro		 SM21 Upgrade

echo off

::call upgrade >> upgrade.log 2>&1

set SM_INSTANCE=SMDEV
set SM_ROOT="F:\App\Thermo\SampleManager\21.0"
set SERVER_ROOT="F:\Thermo\SampleManager\Server"
set STAGE="C:\Users\sadm-X241384\Desktop\UPGRADE_KIT\staging"

ECHO Instance Name     : %SM_INSTANCE%
ECHO SM Root           : %SM_ROOT%
ECHO Server Root       : %SERVER_ROOT%
ECHO Staging Folder    : %STAGE%

PAUSE
 
set INSTANCE_ROOT=%SERVER_ROOT:"=%\%SM_INSTANCE%

echo on

if not exist %INSTANCE_ROOT%\Upgrade21 mkdir %INSTANCE_ROOT%\Upgrade21 

call %~dp0bin\Part4 %SM_INSTANCE% %INSTANCE_ROOT% %STAGE% %SM_ROOT% >> %INSTANCE_ROOT%\Upgrade21\Upgrade4.log 2>&1

PROMPT $P$G

EXIT /B