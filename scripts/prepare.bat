powershell -C "mkdir C:/dl"
curl -o "C:/dl/wpd.zip" "https://www.winpcap.org/install/bin/WpdPack_4_1_2.zip"
powershell -C "Add-Type -AssemblyName system.io.compression.filesystem ; [io.compression.zipfile]::ExtractToDirectory(\"C:/dl/wpd.zip\", \"C:/dl\")"
powershell -C "mkdir lib"


if "%PYTHON_ARCH%"=="64" (GOTO 64BIT) ELSE (GOTO 32BIT)

:64BIT
echo "64 bit setup"
powershell -C "cp -r c:/dl/wpdpack/lib/x64/Packet.lib lib/"
GOTO END

:32BIT
echo "32 bit setup"
powershell -C "cp -r c:/dl/wpdpack/lib/Packet.lib lib/"
GOTO END

:END

SET

rustup target add i686-pc-windows-msvc