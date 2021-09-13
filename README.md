# MacWinKeys

This is an AutoHotKey script for Windows intended to make switching between a Mac and a Windows machine less painful.

## Why would I need this?
I use a Mac for personal use, but a Windows machine for work. At first I was just dealing with the struggle of remembering to use CTRL for most of my shortucts while I was on my Windows computer, but then I started to fumble with my shortcuts on my Mac and deciced enough was enough.

This may also work in a VM like Parallels, but I haven't personally tried it.

## Okay, so what does it do?
This is my first AHK script, so it's probably a little hacky to those who know what they're doing, but it essentially just remaps common shortcuts from using the WIN key to using the CTRL key, which should make the keyboard layout feel more comfortable for a regular Mac user.

When you input a shortcut such as `WIN + C`, this script intercepts that input and instead inputs `CTRL + C` -- Since the Windows key is located in the same place as the Command key (usually, at least), you end up with the same shortcut experience between both operating systems.

## How do I use this script?

You'll have to have AutoHotKey installed, so do that first. Then, either download the script from here, or copy/paste the code into a new `.AHK` file (it HAS to be that extension). From there, you can just double click to run the script and it'll work. I recommend putting the script into your Startup folder so you don't have to run it again each time your computer reboots.

I've heard that AutoHotKey doesn't always work super well with VMs on Windows or with Hyper-V, but this can be solved by running the script as an admin. I haven't tried it personally.


## My keyboard has ALT where CMD normally is!

Since I'm primarily a Mac user, my HHKB and other custom keyboards all have the CMD key where it should be, which is then treated as the WIN key in Windows. If you have a keyboard where ALT is the key directly to the left of the spacebar (where CMD should be) you can edit the script to replace any instances of `#` in a shortcut to `!` to change them to the Alt key.

For example, this line:

    #a::Send {LCtrl down}{a}{LCtrl up}

Changed to...

    !a::Send {LCtrl down}{a}{LCtrl up}

Will remap the "Select All" shortcut to `Alt + a` rather than `Win + a` instead.

My plan is to implement a quicker way to modify the script without having to actually edit the code, but I'm new at AHK so I have to learn how to do that first.