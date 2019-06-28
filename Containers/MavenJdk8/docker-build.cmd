@echo off

setlocal

set CONTAINER_NAME=maven-jdk-8
set LOCAL_MVN=%USERPROFILE%\.m2
set BASE=%cd%
set PARAM_ADD=

   set CMD_RUN=docker run -v %BASE%:/src -v %LOCAL_MVN%:/root/.m2 %PARAM_ADD% %CONTAINER_NAME% %*
   echo %CMD_RUN%
   call %CMD_RUN%

endlocal

