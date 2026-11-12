# Image Previews in vifm for sixel capable terminals

Kind of a clone of vifmimg but for sixel

This script is used along [vifm](https://github.com/vifm/vifm) to generate image previews for
various file types in vifm.

The script is currently able to handle the following formats:
* Video
* eBook
* Images
* Audio files
* Fonts

All previews are cached in your **${XDG_CACHE_HOME}/thumbnails** folder with image properties cached
in **${XDG_CACHE_HOME}/vifm-sixel-preview**


## Installation
1. `git clone https://github.com/eylles/vifm-sixel-preview`
2. `cd vifm-sixel-preview`
3. `make install`

4. Edit your **~/.config/vifm/vifmrc** file and add this snippet:
```
if filereadable($VIFM . '/use_sixel_previews.vifm')
    source $VIFM/use_sixel_previews.vifm
endif
```

now you can run vifmrun and get this working


## Prerequisites
* bash
* perl (for xdg cache compliance)
* [ffmpegthumbnailer](https://github.com/dirkvdb/ffmpegthumbnailer)
* ImageMagick
* pdftoppm (Available in the AUR as **poppler** package.)
* [epub-thumbnailer](https://github.com/marianosimone/epub-thumbnailer)
* [fontpreview](https://github.com/sdushantha/fontpreview)

## notes

In spite of the scripts being named vifmrun and vifmimg now it is not a 1 to 1 direct drop in
replacement to vifmimg, tho i try to make it so the actual repo that will be able to work as a drop
in replacement is [my personal fork of vifmimg](https://github.com/eylles/vifmimg/tree/myfork), as i
try to sorta kinda keep them with equal capabilities as i find use of both image previewing scripts
since i also maintain the old python ueberzug.

## Credits

[vifmimg](https://github.com/cirala/vifmimg)

[show-sixel](https://github.com/vifm/vifm/issues/419#issuecomment-485918513)
