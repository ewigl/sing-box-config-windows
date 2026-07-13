Set WS = CreateObject("WScript.Shell")

Dim errorCode
errorCode = WS.Run("sing-box.exe merge config.json -c outbounds/outbounds.json -C fields", 0, True)

If errorCode = 0 Then
    WS.Run "sing-box.exe run", 0
End If
