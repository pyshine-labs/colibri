@echo off
title Colibri Qwen3.6-35B-A3B (RTX 4060 Ti 16GB)
cd /d F:\colibri-work\colibri-new\c

rem ---- stop any previous instance (harmless if none is running) ----
"E:\Users\pc\miniconda3\python.exe" coli stop >nul 2>&1

rem ---- CUDA VRAM expert tier (cap 256 = full expert residency) ----
set COLI_CUDA=1
set COLI_GPU=0
set OMP_NUM_THREADS=4

echo.
echo   API:      http://127.0.0.1:8000/v1   (OpenAI-compatible)
echo   Model id: qwen3.6-colibri
echo   Note:     first start takes ~10 min (47 s weights + expert warmstart).
echo             Close memory-heavy apps (browser etc.) - engine needs ~30 GB RAM.
echo.
"E:\Users\pc\miniconda3\python.exe" coli web --model F:\colibri-work\models\qwen36_i4_gs64 --cap 256
pause
