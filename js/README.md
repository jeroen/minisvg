This directory contains a minimal wrapper around the `resvg-wasm` package.

We use `esbuild` to bundle the package into a single neutral JavaScript file that can be used in various environments.

To update and rebuild `resvg-r`, run:

```bash
cd js
npm ci
npm install @resvg/resvg-wasm text-decoding
npm run build
```
