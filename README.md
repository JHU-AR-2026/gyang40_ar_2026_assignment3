# AR 2026 – Assignment 3

**Author:** George Yang (gyang40@jh.edu)

## Contents

- `Q2/` – Babylon.js WebXR (immersive AR) scene that loads the `old_rusty_car.glb` model.
  - `index.html` – exported Babylon.js Playground page
  - `old_rusty_car.glb` – 3D model used by the scene
- `Q3/q3.m` – MATLAB script that builds a projection matrix from camera intrinsics and projects a camera-space point to NDC and then pixel coordinates.
- `Q4/` – Custom Phong shading in Babylon.js.
  - `a.js`, `c.js` – Playground code for parts (a) and (c)
  - `index.html` – exported Playground page
  - `*.png` – screenshots of the results

## How to Run

**Q2 / Q4 (Babylon.js):** Serve the folder over HTTP and open `index.html` in a browser, e.g.

```bash
cd Q2   # or Q4
python3 -m http.server 8000
```

then visit `http://localhost:8000`. The AR part of Q2 needs a WebXR-capable device/browser (e.g. Chrome on Android), and serving over HTTPS if not on localhost.

The `.js` files in `Q4/` can also be pasted directly into the [Babylon.js Playground](https://playground.babylonjs.com/).

**Q3 (MATLAB):** Open `Q3/q3.m` in MATLAB and run it. The resulting pixel coordinates are printed to the console.
