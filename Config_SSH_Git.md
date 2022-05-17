Etape windows, peut être passer si sous linux

```js
// Sous windows: Installer Git et utiliser Git Bash
```

Sur Git Bash, effectuer les commandes ci-dessous et choisir un mot de passe perso:

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
# ou ssh-add ~/.ssh/id_rsa


# et ouvrir vsCode
code

```

linux

```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

```

<!-- global -->

```js
// ssh-keygen -p

//  test => en CLI faire un :
git clone git@github.com:mt-shke/test-repo.git
```

-   config git settings

```bash
git config --global user.name "mon nom d'utilisateur"
git config --global user.email "mon email associé a mon compte github"
git config --global core.editor code

```

<details>
<summary>Plus si bug</summary>

<!-- plus de ressources si bug persiste, mais normalement falcutatifs -->
<!-- plus de ressources si bug persiste, mais normalement falcutatifs -->
<!-- plus de ressources si bug persiste, mais normalement falcutatifs -->

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

</details>
