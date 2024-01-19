<details>
<summary>Reinstall Kali</summary>

surfshark

```bash
curl -f https://downloads.surfshark.com/linux/debian-install.sh --output surfshark-install.sh #gets the installation script
cat surfshark-install.sh #shows script's content
sh surfshark-install.sh #installs surfshark
```

```bash
sudo timedatectl set-timezone Europe/Paris
sudo apt install gimp
sudo apt install git
sudo apt install nodejs
sudo apt install npm

# vscode => vscode website => sudo apt install ./vsc...

# update npm node

# sudo npm cache clean -f
# sudo npm install -g n
# sudo n stable

# curl -fsSL https://bun.sh/install | bash 
# /.bun 
# /usr/share/code 
```

reinstall node & npm
```
sudo rm -rf /usr/local/bin/npm /usr/local/share/man/man1/node* ~/.npm
sudo rm -rf /usr/local/lib/node*
sudo rm -rf /usr/local/bin/node*
sudo rm -rf /usr/local/include/node*

sudo apt-get purge nodejs npm
sudo apt autoremove
Download the latest tar.xz NodeJS file from https://nodejs.org/en/download/

tar -xf node-v#.#.#-linux-x64.tar.xz
sudo mv node-v#.#.#-linux-x64/bin/* /usr/local/bin/
sudo mv node-v#.#.#-linux-x64/lib/node_modules/ /usr/local/lib/
Where #.#.# is the version you downloaded.

Verify installation using

node -v
npm -v

```

brave

```bash
sudo apt install curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

 echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser
```

etcher

```js
// https://github.com/balena-io/etcher/releases/
```

</details>

<details>
<summary>VMWare</summary>

VMWare

```js
// https://www.kali.org/get-kali/#kali-platforms
// https://www.vmware.com/products/workstation-player.html

// chmod +rwx ./VMware-Player-Full-17.0.0-20800274.x86_64.bundle
// sudo ./VMwa...

VMWare kernel headers
// sudo apt-get update
// sudo apt-get dist-upgrade

// reboot

// sudo apt-get install linux-headers-$(uname -r)
```

</details>