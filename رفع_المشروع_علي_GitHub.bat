@echo off
chcp 65001 > nul
title رفع المشروع على GitHub - كنيسة مارمينا العجايبي
cls
echo ================================================================
echo   رفع نظام الحضور لكنيسة مارمينا العجايبي على GitHub
echo ================================================================
echo.
echo [1] جاري إعداد وتجهيز مستودع Git...
git init
git add .
git commit -m "Official Release: St. Mina Church QR Attendance System (Multi-Device Realtime Sync)"
git branch -M main
echo.
echo ----------------------------------------------------------------
echo  الاسم المقترح للمستودع على GitHub:
echo  >>> st-mina-attendance-qr <<<
echo ----------------------------------------------------------------
echo.
set /p REPO_URL="انسخ والصق رابط مستودع GitHub الخاص بك هنا: "
if "%REPO_URL%"=="" goto done
git remote remove origin 2>nul
git remote add origin %REPO_URL%
git push -u origin main --force
echo.
echo ================================================================
echo  ✅ تم رفع المشروع على GitHub بنجاح!
echo ================================================================
:done
pause
