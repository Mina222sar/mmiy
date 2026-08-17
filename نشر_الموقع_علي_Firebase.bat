@echo off
chcp 65001 > nul
title نشر الموقع على Firebase Hosting أونلاين
cls
echo ================================================================
echo   نشر الموقع أونلاين على السحابة (Firebase Hosting)
echo   ليعمل على كافة الهواتف (iPhone / Android) وأجهزة الكمبيوتر
echo ================================================================
echo.
echo [1/2] جاري فحص ونشر الموقع على سيرفرات Google Cloud...
call npx -y firebase-tools@latest deploy --only hosting,firestore
echo.
echo [2/2] الرابط المعتمد للموقع أونلاين هو:
echo  👉 https://qrcode-bbb68.web.app
echo  👉 https://qrcode-bbb68.firebaseapp.com
echo.
pause
