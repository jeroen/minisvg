# minisvg

Lightweight SVG to PNG converter based on [resvg](https://github.com/linebender/resvg).

## Example

Convert svg file into png

``` r
library(minisvg)
svg <- readLines("https://upload.wikimedia.org/wikipedia/commons/f/fd/Ghostscript_Tiger.svg")
svg_to_png(svg, output = 'tiger.png')
browseURL('tiger.png')
```

