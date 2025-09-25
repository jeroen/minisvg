#' Render SVG to PNG
#'
#' Converts an svg string to a PNG image using resvg.
#'
#' @param svg string or raw vector with svg image
#' @param opts list with rendering options
#' @param output filename of png file
#' @export
#' @examples
#' svg <- readLines("https://upload.wikimedia.org/wikipedia/commons/f/fd/Ghostscript_Tiger.svg")
#' svg_to_png(svg, output = 'tiger.png')
#' browseURL('tiger.png')
svg_to_png <- function(svg, opts = list(), output = 'output.png') {
  if(is.character(svg) && length(svg) > 1)
    svg <- paste(svg, collapse = '\n')
  buf <- ctx$call('render_svg_png', svg, opts)
  writeBin(buf, output)
}
