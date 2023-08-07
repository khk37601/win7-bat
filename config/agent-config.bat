@echo off
echo #######################################################################
echo Check Win7  
echo #######################################################################
echo start
 
setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "6.1" (
  pushd "%~dp0"
  IF EXIST "%PROGRAMFILES(X86)%" (
      %~dp0\64\windows6.1-kb2813430-x64_0a282a6077331c034ba2d31b85dfe65dcc71e380.msu
  ) ELSE (
      %~dp0\32\windows6.1-kb2813430-x86_c82381fd35c3bc0003e4a921e777cd26bf432eea.msu
  )
)
endlocal

echo End

echo #######################################################################
echo Created TLS 1.2 
echo #######################################################################
echo start 

REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client" /v DisabledByDefault /t REG_DWORD /d 0x00000000 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client" /v Endabled /t REG_DWORD /d 0x00000001 /f

echo End