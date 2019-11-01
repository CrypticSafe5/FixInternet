echo off
cls
color 0A
title Fix Internet

echo ^> Releasing IPv4 connections
start "" /WAIT /MIN .\modules\ipv4_release.cmd

echo ^> Renewing IPv4 connections
start "" /WAIT /MIN .\modules\ipv4_renew.cmd

echo ^> Releasing IPv6 connections
start "" /WAIT /MIN .\modules\ipv6_release.cmd

::echo ^> Renewing IPv6 connections
::start "" /WAIT /MIN .\modules\ipv6_renew.cmd

echo ^> Flushing DNS
start "" /WAIT /MIN .\modules\dns_flush.cmd

echo ^> Registering DNS
start "" /WAIT /MIN .\modules\dns_register.cmd

echo ^> Task complete

echo.
pause
