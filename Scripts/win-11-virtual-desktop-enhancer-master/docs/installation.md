# Installation

## Table of contents

<!-- TOC -->

- [Installation](#installation)
    - [Table of contents](#table-of-contents)
    - [Prerequisites](#prerequisites)
    - [Procedure](#procedure)
        - [Autostart](#autostart)
            - [Procedure 1: Autostart folder](#procedure-1-autostart-folder)
            - [Procedure 2: Task scheduler](#procedure-2-task-scheduler)
    - [Request assistance](#request-assistance)

<!-- /TOC -->

Click here to go back to the [README](../README.md).

## Prerequisites

**This application only works on Windows 10 and Windows 11 x64 (64 bit) systems**

For this app to work, you first might need to install "Visual C++ Redistributable for Visual Studio 2015". It should be available [here](https://www.microsoft.com/en-us/download/details.aspx?id=52685).

## Procedure

Windows 11 Virtual Desktop Enhancer does not need to be installed: simply download [the latest version](https://github.com/mogya/win-11-virtual-desktop-enhancer/archive/refs/heads/master.zip) and extract it into a folder in your computer.  
Once you have downloaded it you can run it just by executing `virtual-desktop-enhancer.exe` in the folder where you extracted it.

Alternatively you can install [AutoHotkey](https://autohotkey.com/) and run the `virtual-desktop-enhancer.ahk` script file instead.

### Autostart

1. Open the folder where you saved the downloaded files
2. Right click on the executable or on the script file (depending on which one you want to use) -> "Send to" -> "Desktop (create shortcut)"
3. On your desktop there should now be a new shortcut for "virtual-desktop-enhancer.exe": right click on it -> "cut"
4. Open the Start menu; in the search box enter "run" and open the "Run" program which should be the first result
5. In the box which will pop up enter `shell:startup` and click "OK"
6. A folder will open: right click in the folder -> "Paste"
7. Now if you restart the computer the program should start automatically
