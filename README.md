```
      ____  ____  _       ___   __  ______
     / __ \/ __ \(_)     /   | / / / /  _/   The Raspberry PI
    / /_/ / /_/ / ______/ /| |/ / / // /    Arch Linux ARM
   / _, _/ ____/ /_____/ ___ / /_/ _/ /    [ Ultimate ]
  /_/ |_/_/   /_/     /_/  |_\____/___/   Installer
```

> Basic introduction for Configuring Raspberry Pi

Steps to install Raspberry-Pi-AUI:
----------------------------------
#### Installation via `wget`:
```
wget -O - https://raw.githubusercontent.com/kingspp/RPi-AUI/master/aui-setup.sh | sudo bash
```
(if you get error regarding **wget**, see the [note](#note) in the bottom)

#### Installation via `curl`:
```
curl -L https://raw.githubusercontent.com/kingspp/RPi-AUI/master/aui-setup.sh | sudo bash
```

Commands  | Description
----------|--------------------------
aui       | Arch Ultimate Install UI
aui-disp  | Display UI
aui-oc    | OverClocking UI
aui-userm | Usermanagement UI
aui-util  | Utility Manager UI

How to contribute?
------------------
Take a look at [CONTRIBUTING.md](/CONTRIBUTING.md)

Note
----
**Wget error.** Execute:
```
sudo pacman -Syu wget
```

Milestone
---------
 - [ ] Improve UI
