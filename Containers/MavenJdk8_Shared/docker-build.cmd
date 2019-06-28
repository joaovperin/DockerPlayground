@echo off

setlocal

set CONTAINER_NAME=maven-jdk-8-localcache
set BASE=%cd%
set LOCAL_MVN_CACHE=%USERPROFILE%\.m2
set PARAM_ADD=

   set CMD_RUN=docker run -v %BASE%:/src -v %LOCAL_MVN_CACHE%:/root/.m2 %PARAM_ADD% %CONTAINER_NAME% %*
   echo %CMD_RUN%
   call %CMD_RUN%

endlocal

