# parody_on_cicada3301
rebuilding of tinycore liux just like in cicada3301

For this you will need this link:
http://tinycorelinux.net/corebook.pdf 

In that book you'll see steps to mount core.iso (it will be better if you have linux) and than unpack core.gz (all the filesystem stores in that file). 

Replace all in the file "init" with the script (all that it do is read sw1.txt and prints frames with delay that also stores in sw1.txt file) and place sw1.txt in the same directory. Than you'll have to pack core.gz.

Optionally, you can make splash image in .ppm format and than convert this image to .rle with the utility ppmtolss16 (sudo apt install syslinux-utils //for ubuntu). 

In the dir /boot/isolinux you can find isolinux.cfg file. Insert string "display frosya.txt" in first line, than create file frosya.txt in the same directory. Tinycore uses syslinux to boot so you can find all the docs you need in the internet. 

https://wiki.syslinux.org/wiki/index.php?title=SYSLINUX https://wiki.syslinux.org/wiki/index.php?title=Display_file_format 

In the file frosya.txt you need to type "^Xfrosya.rle". ^X is a special character in itf-8 so press CTRL-SHIFT-U and type 0018 (that will make this character). I make it in gedit and saved. After that, in nano you'll see this character like ^X colored in orange. If it is, this means you do everything right.  

Make iso file (I'll place commands you need in the file commands.txt).

In cicada3301 tinycore start programs runs after init and bin file /sbin/init completed. It means that you can abort programs with CTRL+C and after this you will be taken to a shell. In my instruction /sbin/init not runs, so the the rest of the boot process and configuring the environment for the user not executing and, another words, you cannot fall to shell with CTRL+C.
