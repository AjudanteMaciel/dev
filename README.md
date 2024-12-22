TODO: Automatic install sript

FiraCode Nerd Font Mono
Fantasque Sans Mono

windows terminal
powershell
    oh my posh --> winget install JanDeDobbeleer.OhMyPosh -s winget
git/github desktop
docker/desktop
wsl2/ubuntu
    zsh --> https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df

vscode

overwrite $PROFILE
overwrite powershell settings

java
    JVMS --> download from https://github.com/ystyle/jvms
            decompression zip and copy jvms.exe to a path what you want
            run cmd or powershell as administrator
            cd to folder where jvms.exe in
            run jvms.exe init
python, 
    pyenv-win: 
        start windows powershell as admin and run --> Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine
        then --> Invoke-WebRequest -UseBasicParsing -Uri "https://raw.githubusercontent.com/pyenv-win/pyenv-win/master/pyenv-win/install-pyenv-win.ps1" -OutFile "./install-pyenv-win.ps1"; &"./install-pyenv-win.ps1"
        then --> remove instalation file
    venvs: personal repository
nodejs
    NVM for Windows:
    installer --> https://github.com/coreybutler/nvm-windows
expo
go
    gvm: https://github.com/andrewkroh/gvm
