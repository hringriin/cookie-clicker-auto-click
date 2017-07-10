# Cookie Clicker Auto Click

Thanks to illogical (@ffaerian), I can provide a click script for cookie-clicker.

## Setup

This script will only work on linux.

You'll need the package `xnee` installed.
For *Arch Linux* it is `pacman -S xnee`.

Start the `create-mouse-command.bash` Script.
It will prompt for a filename.
Type a file name.
If it is already taken, the script will tell you.

After the countdown (default: 3) you'll need to perform what the script should do.
If you want to click cookies, you'll need your mouse and a fast finger :-)
It is perfectly suffcient to do about 10 clicks and then stop the script with `CTRL + C`.  
If you have a click macro on your mouse (e.g. Roccat devices can do such neat things), you can use this as well.
I, for example, have a Roccat Tyon and a script, which depresses and releases the left mouse button every 25ms.
Due to the fact, that macros are saved on the device itself, I can use it under Linux :-) but you do not need that script, because Cookie Clicker has a cap of clicks per second.

After aborting the script of letting it finish (about 800 commands) a file is generated.
The name was chosen by you at the beginning.

## Usage

Now start the `mouse-spam.sh` Script and use your filename as parameter, e.g. `mouse-spam.sh testscript` or `mouse-spam.sh testscript.xnl`.  
The `.xnl` is the filetype, the script will generate.

The script can be aborted with `CTRL + C` as well.

If you're using [i3wm][i3wm], you might want to have a look at my [dotfiles repository][dotfilesrepo] on github.com.
I've placed a keybinding there to start and stop the script without a shell open.

**If you want to use those bindings as is, please keep in mind, that to stop the script, it will kill all instances of `watch`.
By ***all*** I ***mean*** all!***


[i3wm]: https://i3wm.org "i3wm"
[dotfilesrepo]: https://github.com/hringriin/dotfiles "My Dotfiles"
