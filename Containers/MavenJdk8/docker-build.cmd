@echo off

setlocal

set CONTAINER_NAME=maven-jdk-8
set BASE=%cd%
set PARAM_ADD=

   set CMD_RUN=docker run -v %BASE%:/src %PARAM_ADD% %CONTAINER_NAME% %*
   echo %CMD_RUN%
   call %CMD_RUN%

endlocal

