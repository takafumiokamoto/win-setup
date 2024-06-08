@Echo Off
del /Q %APPDATA%\obs-studio\safe_mode
cd "C:\Program Files\obs-studio\bin\64bit\"
start "" obs64.exe --startreplaybuffer --minimize-to-tray