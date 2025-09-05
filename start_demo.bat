@echo off
title Sales Mood AI - Professional Demo
cls

echo.
echo =====================================================
echo           SALES MOOD AI V1 MVP
echo        Professional Demo Environment
echo =====================================================
echo.
echo Starting professional web server...
echo Demo will be available at: http://localhost:3000
echo.
echo Features included:
echo  ^> Real-time AI emotion analysis
echo  ^> Advanced sales coaching
echo  ^> Performance analytics dashboard  
echo  ^> PDF report generation
echo  ^> Client profiling system
echo.
echo Press Ctrl+C to stop the demo
echo =====================================================
echo.

REM Start the professional server
python -m http.server 3000 --bind 127.0.0.1

pause