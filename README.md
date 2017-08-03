# RAS_JoyBOX

  `RAS_JoyBOX is Emulator machine on the Raspberry-Pi.`

> Ras Joy-BOX Play RetroPie with Based on the recalbox team gpio joystick on the Raspberry-Pi Emulator Merchine :
* https://retropie.org.uk/
* https://github.com/recalbox/mk_arcade_joystick_rpi
* http://wiki.rasplay.org/doku.php?id=community:rasjoybox

> How to Make RAS-Joy BOX here : http://www.rasplay.org/?cat=1058

> RaspberryPi Village RAS Joy-BOX Open-Project Picture
* [2015년 11월 13일–2015년 11월 26일](https://photos.google.com/share/AF1QipPfdxQeBnpMFsmty2p8vLI6KjaJ7pyijFHJx5OlCwA2tBLHWjq3dk653w9pP1R4KQ?hl=ko&key=NU5ld3haVlJOYTNLSlQ4SzVLeWpwdkpVNXZLUjJ3)
* [2015년 11월 21일–2015년 11월 22일](https://photos.google.com/share/AF1QipNcHMwPwy5QZJLbIfB3i_VbxYQL0BoeGIgafSpTe2L4uJpzr8MBwr2kFO8ZtchJ4w?hl=ko&key=anJJVWY3TXY0clgyUTZtSDBZcVRrd0Uxbi1kaWlB)
* [2015년 12월 15일–2015년 12월 19일](https://photos.google.com/share/AF1QipPa3wGIVX1eDkI9ersyoNpkGt75jl77zDFH1J_xyfkDb1GVmC-s60Ast3-vJhhlWQ?hl=ko&key=UVdNZlVyeDhpX0MxdlMwR182UzhYZm5tMmgwcWVn)

![RAS-JoyBOX](https://i.imgur.com/eCt6yDG.jpg)

* **GPIO Joystick at the RaspberryPi**
  - About more install and how to use and description through [here](https://github.com/rasplay/RAS_JoyBOX/tree/master/mk_arcade_joystick_rpi).

* **Support CLCD Function at the RAS Joy-BOX**
  - About more install and how to use and description through [here](https://github.com/rasplay/RAS_JoyBOX/tree/master/RetroPie-Clcd).


## Known Bugs ##
If you try to read or write on i2c with a tool like i2cget or i2cset when the driver is loaded, you are gonna have a bad time... 

If you try i2cdetect when the driver is running, it will show you strange peripheral addresses...

256MB Raspberry Pi Model B is not supported by the current driver. If you want to make the driver work on your old RPi, you will have to change the address of BSC1_BASE to (BCM2708_PERI_BASE + 0x205000) in order to use the correct i2c address, and recompile.

## Reference site ##
-------------
- [recalbox.com](https://www.recalbox.com)
- [bug update1 over RetroPie 3.8.x](http://forums.rasplay.org/topic/217/retropie-3-8%EC%9D%B4%EC%83%81%EC%97%90%EC%84%9C-gpio-%EC%9E%91%EB%8F%99%ED%95%98%EB%8A%94%EB%B2%95)
- [bug update2 how to custom gpio change](http://forums.rasplay.org/topic/230/%ED%95%B4%EA%B2%B0-gpio%ED%8F%AC%ED%8A%B8-%EB%B3%80%EA%B2%BD-%EA%B0%80%EB%8A%A5%ED%95%A0%EA%B9%8C%EC%9A%94/18)

Credits
-------------
-  [recalbox original work](https://github.com/recalbox/mk_arcade_joystick_rpi/)
-  [gamecon_gpio_rpi](https://github.com/petrockblog/RetroPie-Setup/wiki/gamecon_gpio_rpi) by [marqs](https://github.com/marqs85)
-  [RetroPie-Setup](https://github.com/petrockblog/RetroPie-Setup) by [petRockBlog](http://blog.petrockblock.com/)
-  [Low Level Programming of the Raspberry Pi in C](http://www.pieter-jan.com/node/15) by [Pieter-Jan](http://www.pieter-jan.com/)
