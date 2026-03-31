# Vlc Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
Khushi@ubuntu-server:~/Vlc$ ./01-identify.sh
================================================================================
                   Vlc AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       Khushi
Home Directory:     /home/Khushi
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Tue Mar 31 2026 13:44:36 GMT+0000 (Coordinated Universal Time)
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```
---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
Khushi@ubuntu-server:~/Vlc$ ./02-packages.sh
================================================================================
                   Vlc AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: vlc is INSTALLED on this Debian/Ubuntu system.
Version: 3.0.18-1ubuntu1
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Vlc: A free and open-source media player that promotes the principles of software freedom
 - Firefox: A free and open-source web browser that advocates for a free and open internet
 - LibreOffice: A free and open-source office suite that supports the values of open-source software
 - GIMP: A free and open-source raster graphics editor that demonstrates the power of community-driven development
================================================================================
```
---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
Khushi@ubuntu-server:~/Vlc$ ./03-auditor.sh
================================================================================
                   Vlc AUDIT - DIRECTORY AUDITOR                 
================================================================================
/etc: Size: 4.0K Permissions: 755 Owner: root:root
/var/log: Size: 1.1M Permissions: 755 Owner: root:root
/usr/bin: Size: 44M Permissions: 755 Owner: root:root
/usr/lib: Size: 1.4G Permissions: 755 Owner: root:root
/home: Size: 2.5G Permissions: 755 Owner: root:root
/usr/lib/vlc: Size: 24M Permissions: 755 Owner: root:root
/var/lib/vlc: Size: 12K Permissions: 755 Owner: root:root
================================================================================
```
---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
Khushi@ubuntu-server:~/Vlc$ ./04-logs.sh /var/log/syslog error
================================================================================
                   Vlc AUDIT - LOG FILE ANALYZER                 
================================================================================
Total occurrences of 'error': 10
Mar 31 13:40:01 ubuntu-server systemd[1]: Started System Logging Service.
Mar 31 13:40:01 ubuntu-server systemd[1]: systemd-tmpfiles: error
Mar 31 13:40:01 ubuntu-server systemd[1]: systemd-tmpfiles: error
Mar 31 13:40:01 ubuntu-server systemd[1]: systemd-tmpfiles: error
Mar 31 13:40:01 ubuntu-server systemd[1]: systemd-tmpfiles: error
================================================================================
```
---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
Khushi@ubuntu-server:~/Vlc$ ./05-manifesto.sh
================================================================================
                   Vlc AUDIT - MANIFESTO GENERATOR                 
================================================================================
Please answer the following questions to generate your open-source manifesto:
What is your name? Khushi
What is your favorite open-source project? Vlc
What do you think is the most important aspect of open-source software? Software freedom
My name is Khushi, and I believe in the power of open-source software. My favorite project is Vlc, which demonstrates the values of software freedom. I will continue to support and contribute to the open-source community, promoting the principles of software freedom and collaboration.
Your manifesto has been generated and saved to Khushi.txt
================================================================================
```