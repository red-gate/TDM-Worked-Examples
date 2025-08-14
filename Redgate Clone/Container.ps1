##Create Data Container##                                           

rgclone create data-container `
--image 1618 `
--name "NewWorldDB" `
--lifetime 10h30m

Start-Process -FilePath "C:\Github\TDM\End-to-End\SQL\Create Proxy.bat"

