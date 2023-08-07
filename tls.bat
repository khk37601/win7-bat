@echo off
echo #######################################################################
echo Created TLS 1.2 
echo #######################################################################
echo start
 
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client" /v DisabledByDefault /t REG_DWORD /d 0x00000000 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client" /v Endabled /t REG_DWORD /d 0x00000001 /f

echo End