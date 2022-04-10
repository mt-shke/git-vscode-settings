Etape windows, peut être passer si sous linux

```js
// Sous windows: Installer Git et utiliser la CLI Git Bash
```

In Command Line Interface:

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
```

Change user infos

```bash
test => git clone git@github.com:mt-shke/test-repo.git
git config --global user.name "mon nom d'utilisateur"
git config --global user.email "mon email associé a mon compte github"
git config --global core.editor code
git config --global color.ui true

```
