# Image Previews in vifm for sixel capable terminals

Kind of a clone of vifmimg but for sixel

This script is used along [vifm](https://github.com/vifm/vifm) to generate image previews for various file types in vifm.

The script is currently able to handle the following formats:
* Video
* eBook
* Images
* Audio files
* Fonts

All previews are cached (except for regular images) and stored in your **~/.cache/vifm/** folder.


## Installation
1. `git clone https://github.com/eylles/vifm-sixel-preview`
2. `cd vifm-sixel-preview`
3. `make install`

4. Edit your **~/.config/vifm/vifmrc** file and add fileviewer properties like so:
```
    fileviewer *.pdf
        \ vifmimg pdf %pw %ph %c %pd
        \ %pc
        \ vifmimg clear

    fileviewer *.epub
        \ vifmimg epub %pw %ph %c %pd
        \ %pc
        \ vifmimg clear

    fileviewer <video/*>
        \ vifmimg video %pw %ph %c %pd
        \ %pc
        \ vifmimg clear

    fileviewer <image/svg\+xml>
        \ vifmimg svg %pw %ph %c %pd
        \ %pc
        \ vifmimg clear

    fileviewer <image/*>
        \ vifmimg draw %pw %ph %c %pd
        \ %pc
        \ vifmimg clear

    fileviewer <audio/*>
        \ vifmimg audio %pw %ph %c %pd
        \ %pc
        \ vifmimg clear

    fileviewer <font/*>
        \ vifmimg font %pw %ph %c %pd
        \ %pc
        \ vifmimg clear

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
replacement to vifmimg, as you can see from the configuration and the macros given to be expanded as
arguments to the command being not exactly the same as for vifmimg, another key difference is the
usage of `%pd` which is to tell vifm that direct output is going to the terminal, so that sixels can
be displayed, this macro breaks with vifm.

## Credits

[vifmimg](https://github.com/cirala/vifmimg)

[show-sixel](https://github.com/vifm/vifm/issues/419#issuecomment-485918513)
