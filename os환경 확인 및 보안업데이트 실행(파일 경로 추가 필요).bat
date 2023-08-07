@echo off
echo #######################################################################
echo Created TLS 1.2 
echo #######################################################################
echo start

setlocal

for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "6.1" (
  IF EXIST "%PROGRAMFILES(X86)%" (
      rem taskkill /IM abc.exe /t /f
      rem start /d "C:\Users\%username%\Desktop\" /b /min abc.exe
      echo 'win7 64bit 경로 exe 실행'
  ) ELSE (
      echo 'win7 32bit exe 실행'
  )
)


endlocal

echo End