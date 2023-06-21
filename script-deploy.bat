

@echo on

SET mypath=C:\Users\orsys\Desktop\demo1\monappli
SET tomcatpath=C:\opt\xampp\tomcat\bin

call mvn scm:checkout  -DconnectionUrl=scm:git:https://github.com/NoobiRyoki/demo1 -DcheckoutDirectory=monappli

cd %mypath%\monappli

call mvn clean package

SET src=%mypath%\monappli\monappli-web\target\monappli-web.war
SET dest=C:\opt\xampp\tomcat\webapps\

copy %src% %dest%

call %tomcatpath%\startup.bat

start chrome http://localhost:8080/monappli-web/
pause

