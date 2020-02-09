FROM mcr.microsoft.com/windows:1903-amd64
ADD https://raw.githubusercontent.com/Gnucash/gnucash-on-windows/master/setup-mingw64.ps1 /setup-mingw64.ps1
SHELL ["powershell", "-Command"]
RUN set-executionpolicy -executionpolicy RemoteSigned -scope LocalMachine
RUN &"/setup-mingw64.ps1"