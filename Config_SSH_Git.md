Etape windows, peut être passée si sous linux

```js
// Sous windows:
// - Aller sur le site internet de Git, télécharger et installer Git(normalement Git Bash est inclus) et lancer Git Bash
```

En CLI ou Git Bash:

```js
// - Sur Git Bash, exécuter les commandes ci-dessous et choisir un mot de passe perso:

ssh-keygen -t rsa -b 4096 -C "michel.tcha@gmail.com"
// => Crée une clé ssh avec votre email

cat ~/.ssh/id_rsa.pub
// => Copie dans votre presse-papiers la clé ssh nouvellement créee dans le ficher id_rsa.pub, à partir de l'emplacement par défault: C:\Users\username\.ssh
```

```js
// - Aller sur votre profile github dans : Settings > SSH and GPG keys > New SSH key
// - Coller la clé et valider
```

sous windows

```bash
eval `ssh-agent`
ssh-add
# ou ssh-add ~/.ssh/id_rsa
# Stocke la clé privée en mémoire afin d'éviter d'avoir à toujours retaper les ids Git


# et ouvrir vsCode pour tester
code

```

sous linux

```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
# Stocke la clé privée en mémoire afin d'éviter d'avoir à toujours retaper les ids Git

```

test

```js
// Addresse git pour effectuer un test => en CLI faire un :
git clone git@github.com:mt-shke/git-vscode-settings.git

ssh-keygen -p
// si le mot de passe est toujours demandé
```

```bash
# Configure les ids Git
git config --global user.name "mt-shke"
git config --global user.email "michel.tcha@gmail.com"
git config --global core.editor code

```

<details>
<summary>Plus si bug</summary>

```js
// <!-- plus de ressources si bug persiste, mais normalement falcutatif -->
// <!-- plus de ressources si bug persiste, mais normalement falcutatif -->
// <!-- plus de ressources si bug persiste, mais normalement falcutatif -->
```

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
