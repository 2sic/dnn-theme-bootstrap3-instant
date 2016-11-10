# DNN Skin/Theme Bootstrap3 Instant!
A clean, prepared bootstrap3 skin for DNN (DotNetNuke), ready to make awesomeness - ideally combined with bootstrap content-templates. 

1. Ideally you will install this together with the [Invisible Container](https://github.com/2sic/dnn-container-invisible)
1. Also check out other DNN Bootstrap Skins like:
  2. [DNN Bootstrap3 Single Pager](https://github.com/2sic/dnn-theme-bootstrap3-single-pager)
  3. [DNN Bootster](http://www.dnnbootster.com/)
2. And it's awesome together with professional content-templates like
  1. [Standard Bootstrap3 Content Blocks/Templates](https://github.com/2sic/2sxc-content-bootstrap3)

## Installation

### Decision: Put in Shared Area or Only This Portal
We recommend that you place this in your shared `/Portals/\_default` area, but you can also put it into your specific portal, like `/Portals/0/`. The following 2 examples assume you want to put it into \_default. 

### Option 1: DNN Extension Install
You can install the skin as a DNN-Extension (but you don't have to). The net result is similar, but if you're not into git/npm/bower installs, then this is better. If you're versed with git, I would skip this. 

1. Download the skin-extension package from the [latest release](https://github.com/2sic/dnn-theme-bootstrap3-instant/releases/latest)
1. log into your dnn as host-user (so you can install extensions)
1. go to _either_ **Host** (shared) _or_ **Admin** (this portal only) > **Extensions** > **Install Extension Wizard**
1. add the skin-package, upload, go through the dialogs...done
1. the skin package works great with the [invisible container](https://github.com/2sic/dnn-container-invisible) which you should install as well

### Option 2: Quick-Install Using Git Command
This assumes that you already have git installed on your pc and that you kind of have an idea what git is :)

1. In your file explorer, go to `/Portals/_default/` (shared) or `/Portals/[your-portal-id]` (this portal only), then shift-right-click on the `Skins` folder and choose _Open Command Window Here_. You should now have a command-line on that folder. 
2. Run this command (and rename `InstantB3` to whatever you want): 
```
git clone https://github.com/2sic/dnn-theme-bootstrap3-instant "InstantB3"
```

This will get the latest copy of this skin/theme and place it in the right folder. You can now use it in any layout you want. 

### Option 3: Installing using Windows File Explorer

1. In your file explorer, go to `/Portals/_default/Skins/` (or `/Portals/[your-portal-id]/Skins/` for single-portal install
2. Create a new folder, call it `InstantB3` or whatever you want to call this skin. You should now have  
`/Portals/_default/Skins/InstantB3/`
3. all files from [this package](https://github.com/2sic/dnn-theme-bootstrap3-instant/archive/master.zip) into that folder. You should now have  
`/Portals/_default/Skins/InstantB3/` with lots of files/folders

You can now use the skin/theme wherever you want. 

## Automatically Downloading Dependencies (Bootstrap, ...)

In the main skin folder, just run
```
bower install
```

## Configuring a Site to Use this Skin by Default
1. Go to the **Admin** > **Site Settings** > tab **Basic Settings** > Accordeon **Appearence**
1. In the dropdown **Site Skin** choose this skin
1. If you have downloaded the invisible container, also set that in the **Site Container**

## Customizing the Theme/Skin using SASS CSS
TODO
