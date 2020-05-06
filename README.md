# MIB1 High toolbox
The ultimate MIB1-HIGH toolbox for all your MIB1 High customization needs.

Note: this screen has to potential to ruin your MIB1 HIGH unit. The developers are not responsible for any troubles to anyone or anything caused by this toolbox.
It's never our intention to harm any person, car or brand. Use the tools wisely, don't be a douche.

Note2: This is **not** a universal Jailbreak-like solution for all your needs and firmware versions.

Note3: If you're a business who tries to make a profit off of this:  Don't be an asshole: Don't charge money for this. This project is done in my own time, out of love for the community. I've risked bricking my own hardware while testing, and invested a lot of time in the research. Instead of making money, why not support this project with your knowledge or a [small donation](https://paypal.me/chillout1). 

# Requirements
- Read the entire readme
- At least 1 healthy set of brains
- An MIB1 HIGH infotainment unit. It will **not** work on any MIB2 or MIB1 Standard units. Discover Media / Compostion Media is not MIB1 HIGH!
- 1 empty, **FAT32 formatted** SD-card, with enough space. Everything bigger than 1GB is fine
- Some place to save your backups

## Optional requirements ##
- Python v2.7 and/or v3, if you want to extract/compress graphics containers (canim/mif)
- Notepad, if you want to make your own green menu files or scripts
- Picture editing software, if you want to customize graphics files

# How to install
- Put all files and folders on an empty SD-card, preferable >1GB.
- Put the SD-card in one of the slots of your MIB1-unit. 
- Make sure there's only 1 SD-card in your unit, otherwise the scripts don't know where to look.
- Hold the MENU button on your MIB1 and start the software update menu.
- Select the SD-card and select MQB Coding MIB1 Toolbox.
- Let the unit run the entire software update. It will reboot several times
- When it's done, it will ask you to connect a computer and clear the error codes. This is not needed.
- The unit will restart one final time and you're back at the main car menu. Installation is now done.
- Hold the MENU button for about 10 seconds. The developer menu will show. During installation developer mode is activated automatically. If this is not working for some reason on your unit, you need OBD11/VCDS to enable developer mode.
- Go to the Green Developer Menu
- There will be an additional menu called "mqbcoding". When you see this, the installation was succesful.
- You're now done.
- Enjoy!

# How to do a manual installation
- Put the mib1-toolbox on an SD-card and insert it into the MIB-unit
- Make a connection to the debug console of the unit (either via D-Link Dub-E100 on the USB port, or serial interface on the back of the unit)
- Log in
- make the mmx app volume writable: mount -uw /net/mmx/mnt/app/
- copy mqbcoding.esd to /net/mmx/mnt/app/eso/hmi/engdefs/mqbcoding.esd:


```cp /net/mmx/fs/sda0/PersonalPOI/PayLoad/0/default/payload.sh /net/mmx/mnt/app/eso/hmi/engdefs/mqbcoding.esd```

- Hold the MENU button, and go to TESTMODE. On older versions you can go to the developer menu by holding the MENU button for about 10 seconds.
- Go to the Green Developer Menu
- There will be an additional menu called "mqbcoding". When you see this, the installation was succesful.
- You're now done.
- Enjoy!

# Green menu screen overview:

```
MQBCoding
|
+---Dump                                # dump various data to SD-card
|   
+---Customization                       # customisation features        
|   +---Skin                            # Skin graphics import
|   +---Startup                         # Startup graphics import
|   +---GreenMenu                       # Import new green menu screens and scripts
|   +---Advanced                        # Import shadow file, FECs and such
|   +---Updates                         # Custom SWDL modes and emergency
|
+---Disclaimer                          # Some wise words
|    
\---History                             # Version history of the toolbox
```

# How to use the new screens

Most screens have a description inside, or show information when running a script. It's always wise to have an SD-card in slot 1.

## dump
This screen lets you dump skin-files(images.mif files), Android Auto configuration files (gal.json) and Startup screens (.canim files). Make sure an SD-card with enough space is inserted in one of the slots. Dumps will be placed in a folder specific for your unit (FAZIT) and firmware version.

## customization

This screen lets you customize a lot of things. Like updating new images.mif for each of the 6 skin-folders, from the SkinFiles folder on your SD-card. Use the dump files as a guideline. Don't install any files that are meant for other firmwares because it **will** mess up your graphics and functionalities of your infotainment unit.

## greenmenu
This screen will let you import new .esd files ad scripts from the GreenMenu folder on your SD-card.

## advanced
This is the pro section that can seriously brick your unit. It allows you to dump some advanced files, as well as flash/replace others. The coding-feature isn't really functional yet but it has the potential to replace OBD11/VCDS ;)

# How to use the tools
In the Tools folder you will find a couple of tools:
- extract-canim_seat.py
- extract-canim_vw.py

These are Python-scripts to extract startup screen files (.canim files) in 2 formats. If one of the scripts doesn't extract your canim, try the other one. Both work in the same way: extract_canim.py <filename> <outdir>, for instance: 

```extract_canim.py test.canim .\testfiles\```

- extract-mif.py
 
This a python script to extract skinfile containers (mif) and it works similar to the canim-extract: extract_mif.py <filename> <outdir>, for instance:
 
 ```extract_mif.py images.mif .\extracted\```
 
 
- compress-canim_seat.py
- compress-canim_vw.py

These are the scripts to compress the startup-screens. Make sure you use the same compress-method you used when extracting. Usage: compress-canim.py <original-file> <new-file> <imagesdir>, for instance:

```compress-canim.py test.canim modified.canim .\testfiles\```

- compress-mif.py
This is the script to compress the mif-container. Usage: compress-mif.py <original-file> <new-file> <imagesdir>, for instance:
  
```compress-mif.py images.mif images2.mif .\extracted\```

- extract-cff.py
This script can extract images.cff files, container files for navigation icons and materials. Usage: extract-cff.py <output dir>, for instance:
  
```extract-cff.py images.cff c:\extracted\```


## F.A.Q.
If you run into any issues, consult the [F.A.Q.](https://github.com/jilleb/mib1-toolbox/blob/master/FAQ.md).

## Supported firmware versions
This toolbox probably doesn't work on all available firmware versions. You can find out if it works by testing it. Please report the results back to me.


# Disclaimer:
**Warning** These screens have the potential to break your unit and void your warranty. Be careful. We are not responsible for any troubles to you, your car or software. MQB Coding is always looking for cool hacks and retrofits to increase the potential of the MQB platform. It's never our intention to harm any person, car or brand.

## Support this project

You're always welcome to support this project with your knowledge, ideas or a [small donation](https://paypal.me/chillout1) to my Paypal. 

