#' @importFrom V8 new_context
ctx <- NULL

.onLoad <- function(libname, pkgname){
  ctx <<- V8::v8()
  wd <- setwd(system.file('js', package = 'minisvg'))
  on.exit(setwd(wd))
  blob <- readBin('index_bg.wasm', raw(), file.info('index_bg.wasm')$size)
  ctx$assign('bytes', blob)
  ctx$eval('var module = new WebAssembly.Module(bytes);')
  ctx$source('resvg-wasm.min.js')
  ctx$eval('load_resvg_module(module)', await = TRUE)
}
