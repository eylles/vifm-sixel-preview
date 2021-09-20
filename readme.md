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
        \ vifm-sixel pdf %pw %ph %c %pd
        \ %pc
        \ vifm-sixel clear

    fileviewer *.epub
        \ vifm-sixel epub %pw %ph %c %pd
        \ %pc
        \ vifm-sixel clear

    fileviewer <video/*>
        \ vifm-sixel video %pw %ph %c %pd
        \ %pc
        \ vifm-sixel clear

    fileviewer <image/*>
        \ vifm-sixel draw %pw %ph %c %pd
        \ %pc
        \ vifm-sixel clear

    fileviewer <audio/*>
        \ vifm-sixel audio %pw %ph %c %pd
        \ %pc
        \ vifm-sixel clear

    fileviewer <font/*>
        \ vifm-sixel font %pw %ph %c %pd
        \ %pc
        \ vifm-sixel clear

```


## Prerequisites
* [ffmpegthumbnailer](https://github.com/dirkvdb/ffmpegthumbnailer)
* ImageMagick
* pdftoppm (Available in the AUR as **poppler** package.)
* [epub-thumbnailer](https://github.com/marianosimone/epub-thumbnailer)
* [fontpreview](https://github.com/sdushantha/fontpreview)

## Credits

[vifmimg](https://github.com/cirala/vifmimg)

[show-sixel](https://github.com/vifm/vifm/issues/419#issuecomment-485918513)
