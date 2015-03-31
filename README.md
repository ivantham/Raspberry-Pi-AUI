```
      ____  ____  _       ___   __  ______
     / __ \/ __ \(_)     /   | / / / /  _/   The Raspberry PI
    / /_/ / /_/ / ______/ /| |/ / / // /    Arch Linux ARM
   / _, _/ ____/ /_____/ ___ / /_/ _/ /    [ Ultimate ]
  /_/ |_/_/   /_/     /_/  |_\____/___/   Installer
```

> A simple way to configure Raspberry Pi with Arch Linux ARM for beginners

Requirements
------------
 - Git -> `sudo pacman -S git`

Installation
------------
#### via `wget`:
```
wget -O - https://raw.githubusercontent.com/kingspp/RPi-AUI/master/aui-setup.sh | sudo bash
```
(if you get error regarding **wget**, see the [note](#note) in the bottom)

#### via `curl`:
```
curl -L https://raw.githubusercontent.com/kingspp/RPi-AUI/master/aui-setup.sh | sudo bash
```

Usage
-----

    sudo aui

Commands  | Description
----------|--------------------------
aui       | Arch Ultimate Install UI
aui-disp  | Display UI
aui-oc    | OverClocking UI
aui-userm | Usermanagement UI
aui-util  | Utility Manager UI

How to contribute?
------------------
Take a look at [CONTRIBUTING.md](/CONTRIBUTING.md), [issue tracker](https://github.com/kingspp/RPi-AUI/issues) or [pull requests](https://github.com/kingspp/RPi-AUI/pulls)

Note
----
**Wget error.** Execute:
```
sudo pacman -Syu wget
```

Milestone
---------
 - [ ] Add support for other distribution (if possible)
 - [ ] Improve UI
