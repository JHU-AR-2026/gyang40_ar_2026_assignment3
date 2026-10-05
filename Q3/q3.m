clear; clc;

% parameters
W = 800;
H = 600;
n = 0.2;
f = 20;

%intrinsics
fx = 800;
fy = 800;
ox = 400;
oy = 400;

Pc = [0.3; -0.15; -6.0; 1];

% projection matrix
P = buildProjection(W, H, n, f, fx, fy, ox, oy);

% clip/ndc coords
[ndc, clip] = cameraToNDC(P, Pc);

% convert to uv
uv = ndcToPixel(ndc, W, H);

fprintf('Pixel coordinates (u, v):\n');
fprintf('  (%.4f, %.4f)\n\n', uv);

function P = buildProjection(W, H, n, f, fx, fy, ox, oy)
    P = [2*fx/W, 0, 1-2*ox/W, 0;
        0, 2*fy/H, 1-2*oy/H, 0;
        0, 0, -(f+n)/(f-n), -2*f*n/(f-n);
        0, 0, -1, 0];
end

function [ndc, clip] = cameraToNDC(P, Pc)
    Pc = Pc(:);
    clip = P * Pc;
    ndc = clip(1:3) / clip(4);
end

function uv = ndcToPixel(ndc, W, H)
    u = 0.5 * (ndc(1) + 1.0) * W;
    v = 0.5 * (ndc(2) + 1.0) * H;

    uv = [u;v];
end