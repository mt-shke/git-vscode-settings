Etape windows, peut être passer si sous linux

```js
// Sous windows: Installer Git et utiliser la CLI Git Bash
```

In Command Line Interface, ne rien mettre en pass:

```bash
ssh-keygen -t rsa -b 4096 -C "votre-email@exemple.fr"
cat ~/.ssh/id_rsa.pub
```

```js
// - Copier la clé
// - Aller sur votre profile github dans : Settings > SSH and GPG keys > New SSH key
// - Coller la clé et valider
```

windows

```bash
eval `ssh-agent`
ssh-add
code

```

linux

```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

si passphrase bug:
ssh-keygen -p
```

C

```bash
test => git clone git@github.com:mt-shke/test-repo.git
git config --global user.name "mon nom d'utilisateur"
git config --global user.email "mon email associé a mon compte github"
git config --global core.editor code

```

<!-- ----------- -->

```bash
https://docs.microsoft.com/en-us/windows-server/administration/openssh/openssh_install_firstuse

# Open powershell as admin

Get-WindowsCapability -Online | Where-Object Name -like 'OpenSSH*'
Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0

```

```bash
Start-Service sshd
Set-Service -Name sshd -StartupType 'Automatic'

if (!(Get-NetFirewallRule -Name "OpenSSH-Server-In-TCP" -ErrorAction SilentlyContinue | Select-Object Name, Enabled)) {
    Write-Output "Firewall Rule 'OpenSSH-Server-In-TCP' does not exist, creating it..."
    New-NetFirewallRule -Name 'OpenSSH-Server-In-TCP' -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22
} else {
    Write-Output "Firewall rule 'OpenSSH-Server-In-TCP' has been created and exists."
}
```
