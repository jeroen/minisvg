async function load_resvg_module(module){
    global.resvg = await import("@resvg/resvg-wasm");
    await resvg.initWasm(module);
}

function render_svg_png(svg, opts){
  const resvgJS = new resvg.Resvg(svg, opts);
  const pngData = resvgJS.render(svg, opts);
  const pngBuffer = pngData.asPng();
  return pngBuffer;
}

globalThis.load_resvg_module = load_resvg_module;
globalThis.render_svg_png = render_svg_png;
